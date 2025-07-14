def extract_lane_segments(ll_seg_mask: np.ndarray, heatmap: np.ndarray=None, threshold=50):
    """
    Extract lane segments from the lane line segmentation mask.
    
    Parameters:
    - ll_seg_mask: A 2D numpy array representing the lane line segmentation mask.
    
    Returns:
    - segments: A list of arrays, where each array contains the coordinates of a lane segment.
    """
    # Create a binary image from the segmentation mask
    binary_image = np.zeros(ll_seg_mask.shape, dtype=np.uint8)
    binary_image[ll_seg_mask != 0] = 255

    # Label the connected components
    labeled_image, num_features = label(binary_image) # bottleneck!
    # num_features = 0
    segments = []
    for i in range(1, num_features + 1):
        # Get the indices of the pixels belonging to the current segment
        segment_indices = np.argwhere(labeled_image == i)
        segment_values = heatmap[segment_indices[:, 0], segment_indices[:, 1]]  # Index into test array directly
        avg_segment_score = segment_values.mean()  # Calculate average
        LOGGER.debug(f"segment score: {avg_segment_score}")
        if len(segment_indices) > threshold:
            segments.append((avg_segment_score, segment_indices))

    return segments