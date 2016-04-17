class PagesController < ApplicationController
    def index
        @courses = Course.all
        @students_total = Student.count
    end

    def about

    end
end
