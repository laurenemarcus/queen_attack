class Array
  define_method(:queen_attack?) do |arg_array|

    # get individual coordinates
    x_1 = self[0]
    y_1 = self[1]
    x_2 = arg_array[0]
    y_2 = arg_array[1]

    # get absolute value of difference between x & y coordinates
    # respectively
    x_diff_abs = (x_2 - x_1).abs
    y_diff_abs = (y_2 - y_1).abs

    # horizontal test
    is_horizontal = (x_1 == x_2)

    # vertical test
    is_vertical = (y_1 == y_2)

    # diagonal test
    is_diagonal = (x_diff_abs == y_diff_abs)

    # are the coordinates not one of horizontal, vertical or diagonal?
    can_queen_attack = (is_horizontal || is_vertical || is_diagonal)
  end
end
