def fit_polynomial_to_segments(segments, degree=3):
    """
    Fit two polynomials to each lane segment (left and right edges).
    
    Parameters:
    - segments: A list of arrays containing the coordinates of lane segments.
    - degree: The degree of the polynomial to fit.
    
    Returns:
    - polynomials: A list of tuples, where each tuple contains two sets of polynomial coefficients.
    """
    # Todo: Idea - fit polynom not to whole segment, but to left and right edge of segment
    polynomials = []
    for score, segment in segments:
        # Extract x and y coordinates
        x = segment[:, 1]
        y = segment[:, 0]
        
        # Fit a polynomial to the left edge
        coeffs = np.polyfit(x, y, degree)
        p = np.poly1d(coeffs)
        polynomials.append((p, None, None))

    return polynomials  # tuple of (np.poly1d, start, end)