class ExpensesController < ApplicationController
  before_action :authenticate_user! 
  def index
     @expenses = current_user.expenses.order("date DESC")
  end
end
