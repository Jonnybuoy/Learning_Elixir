defmodule TutorialProject.Structs.Expense do
  alias TutorialProject.Structs.Expense

  defstruct(
    title: "",
    date: nil,
    amount: 0,
    store: ""
  )

  @type t :: %Expense{
    title: String.t(),
    date: Date.t() | nil,
    amount: number(),
    store: String.t()
  }

  @spec sample :: [t()]
  def sample do
    [
      %Expense{title: "Grocery", date: ~D[2025-03-28], amount: 500.00, store: "Jumia"},
      %Expense{title: "Mobile", date: ~D[2025-03-14], amount: 9500.00, store: "Samsung Shop"},
      %Expense{title: "Hoodies", date: ~D[2025-03-20], amount: 1500.00, store: "Wakariukis"},
      %Expense{title: "Shoes", date: ~D[2025-03-15], amount: 3500.00, store: "Bata"}
    ]
  end

  @spec total_amount([t()]) :: number()
  def total_amount(expenses) do
    expenses
    |> Enum.reduce(0, fn expense, acc -> expense.amount + acc end)
  end

  @spec sort_by_date([t()]) :: [t()]
  def sort_by_date(expenses) do
    expenses
    |> Enum.sort_by(& &1.date)
  end

  @spec add_expense(t) :: [t()]
  def add_expense(%Expense{} = expense) do
    [expense | sample()]
  end

  def update_amount(title, amount) do
    [item] = Enum.filter(sample(), fn %{title: expense_title} -> expense_title == title end)
    new_item = %{item | amount: amount}

    [new_item | sample() |> List.delete(item)]

  end

  #----------------------with-----------------------#
  @users ["Jonny", "Edna", "Jim", "Peter"]

  def authenticate(user) when user in @users, do: {:ok, "authorized"}
  def authenticate(_), do: {:error, "unauthorized"}

  def verify_password(user, _password) when user in @users, do: {:ok, "password verified"}
  def verify_password(_user, _password), do: {:error, "wrong password"}

  def login(user, password) do
    with {:ok, _auth_msg} <-authenticate(user),
          {:ok, _msg} <- verify_password(user, password) do
            {:ok, "#{user} logged in successfully"}
    else
      {:error, msg} -> {:error, msg}
      _ -> :unauthorized

    end
  end

end
