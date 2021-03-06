//
//  GenreRepositories.swift
//  SpoonTV
//
//  Created by Nam Ngây on 9/4/20.
//  Copyright © 2020 Nam Ngây. All rights reserved.
//

import Foundation
import ObjectMapper
import RxSwift

protocol GenreRepositoriesType {
    func getListGenreRepo(input: ListGenreRequest) -> Observable<[GenreTabbar]>
    func getSelectedGenreRepo(input: SelectedGenreRequest) -> Observable<[GenreSelected]>
}

final class GenreRepositories: GenreRepositoriesType {
    private let api = APIService.shared
    
    func getListGenreRepo(input: ListGenreRequest) -> Observable<[GenreTabbar]> {
        return api.request(input: input)
            .map {(response: ResultGenreList) -> [GenreTabbar] in
                return response.resultGenreList
            }
    }
    
    func getSelectedGenreRepo(input: SelectedGenreRequest) -> Observable<[GenreSelected]> {
        return api.request(input: input)
            .map {(response: ResultGenreSelected) -> [GenreSelected] in
                return response.resultGenreSelected
            }
    }
}
