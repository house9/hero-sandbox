# frozen_string_literal: true

class WidgetsController < ApplicationController
  before_action :set_widget, only: %i[show edit update destroy]

  def index
    @widgets = Widget.all
  end

  def show
  end

  def new
    @widget = Widget.new
  end

  def edit
  end

  def create
    @widget = Widget.new(widget_params)

    if @widget.save
      redirect_to @widget, notice: 'Widget was successfully created.'
    else
      render :new
    end
  end

  def update
    if @widget.update(widget_params)
      redirect_to @widget, notice: 'Widget was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @widget.destroy

    redirect_to widgets_url, notice: 'Widget was successfully destroyed.'
  end

  private

  def set_widget
    @widget = Widget.find(params[:id])
  end

  def widget_params
    params.require(:widget).permit(:name, :status, :category)
  end
end
