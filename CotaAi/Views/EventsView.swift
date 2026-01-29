//
//  EventsView.swift
//  CotaAi
//
//  Created by Anne Auzier on 29/01/26.
//

import SwiftUI

struct EventsView: View {

    @StateObject private var eventViewModel: EventViewModel = EventViewModel()

    var body: some View {
        NavigationStack {
            Divider()

            HStack {
                ExpensesPanel(expense: .youOwe, value: eventViewModel.youOwe)
                ExpensesPanel(expense: .youreowed, value: eventViewModel.youreOwed)
            }
            List {
                Section {
                    ForEach(0..<2) { card in
                        CardEvent(status: eventViewModel.eventStatus)
                    }
                } header: {
                    HStack {
                        Text("Eventos Ativos")
                            .font(.title2).bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Spacer()
                        Text("3 events")
                    }
                }
            }.toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        print("Create Event")
                    } label: {
                        Image(systemName: "plus")
                            .imageScale(.large)
                            .foregroundStyle(.tint)
                    }
                }
            }
        }.onAppear {
            eventViewModel.onAppearMock()
        }
    }
}

#Preview {
    EventsView()
}
