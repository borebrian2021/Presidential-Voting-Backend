class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  # //POST
  get "/addVoter" do
    voter = Voter.create(
      name: params[:name],
      age: params[:age],
      county: params[:county],
      gender: params[:gender]
    )
    Voter.to_json
  end

  # POST
  get "/vote" do
    vote=Vote.create(
      voters_id:params[:voters_id]
      candidate_id[:candidate_id]
    )

end

# MODIFY VOTES
get "/modify_option" do
vote=Vote.find(params[:id])
vote.update(
  voters_id:params[:voters_id]
  candidate_id[:candidate_id]
)


# ADD Candidate
get "/add_candidate" do 
  Candidate.create(
    voters_id:params[:voters_id]
    candidate_id :params[:candidate_id]
  )
end


get "/delete_candidate"
candidate = Candidate.find(params[:id])
# delete the review
candidate.destroy
# send a response with the deleted review as JSON
candidate.to_json




t.string :name
t.string :age
t.string :county
t.string :gender