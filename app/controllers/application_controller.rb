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
    voter.to_json
  end

  # POST
  get "/vote" do
    vote=Vote.create(
      voters_id: params[:voters_id],
      candidate_id: params[:candidate_id]  )
    vote.to_json

end

# MODIFY VOTES
get "/modify_option" do
vote=Vote.find(params[:id])
vote.update(
  voters_id: params[:voters_id],
  candidate_id: params[:candidate_id]
)
vote.to_json
end

# ADD Candidate
post "/add_votes" do 
 candidate= Vote.create(
    voters_id: params[:voters_id],
    candidate_id: params[:candidate_id]
  )
  candidate.to_json
end

get "/delete_candidate" do
candidate = Candidate.find(params[:id])
# delete the review
candidate.destroy
# send a response with the deleted review as JSON
candidate.to_json

end


get "/count_candidates_votes" do

votes=Vote.count


counts = {'votes' => "#{votes}"}
counts.to_json

end
end