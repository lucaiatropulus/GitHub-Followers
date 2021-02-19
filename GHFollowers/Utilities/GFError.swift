//
//  GFError.swift
//  GHFollowers
//
//  Created by Luca Nicolae Iatropulus on 20.01.2021.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username created an invalid request. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection."
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidData = "The data received from the server was invalid. Please try again."
    case unableToFavorite = "There was an error. Please try again."
    case alreadyInFavorites = "This user has already been added to your favorites."
}
