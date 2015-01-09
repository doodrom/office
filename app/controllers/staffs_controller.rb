class StaffsController < ApplicationController
    before_filter :authenticate_user!, :except => [:show, :index]
    def  index
        @staffs = Staff.all
    end
    
    def show
        @staff = Staff.find(params[:id])
    end
    
    def new 
        @staff =Staff.new 
    end 
    
    def create
        @staff = Staff.new(staff_params)
        if @staff.save
            redirect_to(:action => 'index')
        else 
            render('new') 
        end
    end

    def edit 
        @staff = Staff.find(params[:id])
    end
    
    def update 
        @staff = Staff.find(params[:id])
        if @staff.update_attributes(staff_params)
            redirect_to(:action =>'show', :id => @staff.id) 
        else
            render('index')
        end
    end 
    
    def delete 
        @staff = Staff.find(params[:id])
    end 
        
    def destroy 
        Staff.find(params[:id]).destroy 
        redirect_to(:action => 'index')
    end 
    
    private
        def staff_params
            params.require(:staff).permit(:name, :ic, :position, :address)
        end
    
end

