# File: spec/todo_spec.rb

require 'todo'

RSpec.describe 'Todo' do 
    context 'Expected behavior' do 
        it 'Adds a task and returns it' do 
            todo_list = TodoList.new 
            expect(todo_list.task("add Wash the car")).to eq("1 Wash the car")
        end 

        it 'Second example: Adds a task and returns it' do 
            todo_list = TodoList.new 
            expect(todo_list.task("add Walk")).to eq("1 Walk")
        end 
    end 
end 