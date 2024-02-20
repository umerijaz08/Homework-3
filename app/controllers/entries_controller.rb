class EntriesController < ApplicationController
  before_action :set_entry, only: %i[ show edit update destroy ]

  def new
  end

  def create
    @entry = Entry.new

    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["posted_on"] = params["posted_on"]
    @entry["place_id"] = params["place_id"]

    @entry.save

    redirect_to "/places/#{@entry['place_id']}"
  end

end
