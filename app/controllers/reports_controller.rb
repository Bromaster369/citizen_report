class ReportsController < ApplicationController 

    get '/reports' do
        if logged_in?
          @reports = Report.all
          erb :'reports/reports'
        else
          redirect to '/login'
        end
      end
    
      get '/reports/new' do
        if logged_in?
          erb :'reports/create_report'
        else
          redirect to '/login'
        end
      end

      get '/create_report' do 
       erb :'reports/create_report'
      end 
    
      post '/reports' do
        if logged_in?
          if params[:content] == ""
            redirect to "/reports/new"
          else
            @report = current_user.reports.build(content: params[:content])
            if @report.save
              redirect to "/reports/#{@report.id}"
            else
              redirect to "/reports/new"
            end
          end
        else
          redirect to '/login'
        end
      end
    
      get '/reports/:id' do
        if logged_in?
          @report = Report.find_by_id(params[:id])
          erb :'reports/show_report'
        else
          redirect to '/login'
        end
      end

      
    
      get '/reports/:id/edit' do
        if logged_in?
          @report = Report.find_by_id(params[:id])
          if @report && @report.user == current_user
            erb :'reports/edit_report'
          else
            redirect to '/reports'
          end
        else
          redirect to '/login'
        end
      end
    
      patch '/reports/:id' do
        if logged_in?
          if params[:content] == ""
            redirect to "/reports/#{params[:id]}/edit"
          else
            @report = Report.find_by_id(params[:id])
            if @report && @report.user == current_user
              if @report.update(content: params[:content])
                redirect to "/reports/#{@report.id}"
              else
                redirect to "/reports/#{@report.id}/edit"
              end
            else
              redirect to '/reports'
            end
          end
        else
          redirect to '/login'
        end
      end
    
      delete '/reports/:id/delete' do
        if logged_in?
          @report = Report.find_by_id(params[:id])
          if @report && @report.user == current_user
            @report.delete
          end
          redirect to '/reports'
        else
          redirect to '/login'
        end
      end    



end 