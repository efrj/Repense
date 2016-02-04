ActiveAdmin.register Classroom do

    permit_params :student_id, :course_id, :entry_at

    config.filters = false

    index do
        @courses = Course.all
        render :partial => 'list_courses', :locals => {:courses => @courses }
    end

    form do |f|
        f.inputs do
            f.input :student
            f.input :course
            f.input :entry_at, as: :datepicker
        end
        f.actions
    end

end
