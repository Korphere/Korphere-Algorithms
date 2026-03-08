defmodule BubbleSort do
  def sort(list) when is_list(list) do
    do_sort(list, length(list))
  end

  defp do_sort(list, 0), do: list

  defp do_sort(list, count) do
    new_list = bubble_pass(list)
    do_sort(new_list, count - 1)
  end

  defp bubble_pass([a, b | rest]) when a > b do
    [b | bubble_pass([a | rest])]
  end
  defp bubble_pass([a, b | rest]) do
    [a | bubble_pass([b | rest])]
  end
  defp bubble_pass(list), do: list
end
