//
//  EventViewModel.swift
//  CotaAi
//
//  Created by Anne Auzier on 29/01/26.
//

import SwiftUI
import Combine

@MainActor
class EventViewModel: ObservableObject {
    
    @Published var events: [EventData] = []
    @Published var youOwe: Double = 0
    @Published var youreOwed: Double = 0
    @Published var eventStatus: EventStatus = .active

    func onAppearMock() {
        self.events = [
            .init(id: UUID(), name: "Churrasco", date: .now, amount: 120, description: "Churra com os amigos"),
            .init(id: UUID(), name: "Viagem", date: .now, amount: 980, description: "Viagem para Porto Rico"),
            .init(id: UUID(), name: "Almoço", date: .now, amount: 56, description: "almocinho")
        ]
        youOwe = 84
        youreOwed = 36
    }
 
}
