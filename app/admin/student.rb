ActiveAdmin.register Student do

    permit_params :name, :status

    collection_action :teste, method: :get do
        @student = Student.find(25)
        render 'index'
    end

    index do
        selectable_column
        id_column
        column :register_number
        column :name
        column :created_at
        actions
    end

    form do |f|
        f.inputs do
            f.input :name
            f.input :status, as: :select, collection: { 'Matriculado' => 1, 'Formado' => 2, 'Transferido' => 3, 'Cancelado' => 4, 'Jubilado' => 5 }
        end
        f.actions
    end

    show do
        render 'show'
    end

end
