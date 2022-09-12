class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  require 'pry'
  
   # Add your routes here
  # //POST
  post "/addParty" do
    party = Party.create(
      party_name: params[:partyName],
      candidate_name: params[:candidateName],
      profile_image: params[:profileImage],
      party_logo: params[:partyLogo]
  )
  party.to_json(include: :votes)
end


  #GOOGLE SIGN IN OR SIGUP
  post "/sign_up_sign_in" do 
    check_exists=User.find_by_Name(params[:google_id])
    if check_exists
    message={
      message:"User already exists"
      
    }
    check_exists
    else
      user =User.create(
      name: params[:name],
      email: params[:email],
      role: params[:role],
      googleId: params[:google_id],
      img_url: params[:img_url] )
      
  
  end 
  end

  # POST VOTE
  post "/vote" do
    # binding.pry
    vote=Vote.create(
      party_id: params[:candidate_id]
    )
    count_parties=Party.count
    Party.all.each do |c|
      if c.id == params[:candidate_id]
      else
        votes =Vote.where(:party_id==params[:candidate_id]).limit(1)
        votes.destroy_all
      end
    end
    vote
end

# GET ALL CANDIDATES
get "/get_all_candidates" do
  candidates=Party.all
  candidates.to_json(include: :votes)
  end

  


# DELETE CANDIDATE
delete "/delete_candidate/:id" do
  party=Party.find(params[:id]);
  party.destroy
  party.to_json
  end
  

  
# ADD Candidate
post "/add_votes" do 
  candidate= Vote.create(
     voters_id: params[:voters_id],
     candidate_id: params[:candidate_id]
   )
 
 
   
   candidate.to_json
 
 
 end
 
# VOTE UP
post "/vote" do
  vote=Vote.create(party_id:params[:id])
  find=Party.find(params[:candidate_id])
  find
end
end
