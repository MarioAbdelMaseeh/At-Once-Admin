//
//  ControlPanelChartComponent.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 17/06/2025.
//

import SwiftUI

struct ControlPanelChartComponent: View {
    let data: [String: Int]
    
    private var total: Double {
        Double(data.values.reduce(0, +))
    }
    
    var colors: [Color] = [.blue, .cyan, .purple, .gray]
    
    struct PieSliceData: Identifiable {
        let id = UUID()
        let startAngle: Angle
        let endAngle: Angle
        let color: Color
        let label: String
        let value: Int
    }
    
    private var slices: [PieSliceData] {
        let sorted = data.sorted(by: { $0.key < $1.key })
        var startDeg: Double = 0
        var result: [PieSliceData] = []
        
        for (index, item) in sorted.enumerated() {
            let value = Double(item.value)
            let angle = value / total * 360
            let slice = PieSliceData(
                startAngle: .degrees(startDeg),
                endAngle: .degrees(startDeg + angle),
                color: colors[index % colors.count],
                label: item.key,
                value: item.value
            )
            result.append(slice)
            startDeg += angle
        }
        return result
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Orders Status Overview")
                .font(.title3)
                .bold()
            
            HStack {
                ZStack {
                    GeometryReader { geometry in
                        let size = min(geometry.size.width, geometry.size.height)
                        let center = CGPoint(x: size / 2, y: size / 2)
                        let radius = size / 2
                        
                        ForEach(slices) { slice in
                            PieSlice(startAngle: slice.startAngle, endAngle: slice.endAngle)
                                .fill(slice.color)
                        }
                    }
                    .aspectRatio(1, contentMode: .fit)
                }
                .frame(width: 150, height: 150)
                
                VStack(alignment: .leading, spacing: 12) {
                    ForEach(slices) { slice in
                        HStack {
                            Circle()
                                .fill(slice.color)
                                .frame(width: 10, height: 10)
                            Text(slice.label)
                                .foregroundColor(.black)
                            Spacer()
                            Text("\(slice.value)")
                                .foregroundColor(.black)
                        }
                    }
                }
                .padding(.leading)
            }
            .padding()
            .background(Color.white)
            .cornerRadius(12)
            .shadow(radius: 4)
        }
        .padding()
    }
}

struct PieSlice: Shape {
    var startAngle: Angle
    var endAngle: Angle

    func path(in rect: CGRect) -> Path {
        var path = Path()
        let radius = min(rect.width, rect.height) / 2
        let center = CGPoint(x: rect.midX, y: rect.midY)

        path.move(to: center)
        path.addArc(center: center,
                    radius: radius,
                    startAngle: startAngle - .degrees(90),
                    endAngle: endAngle - .degrees(90),
                    clockwise: false)
        path.closeSubpath()

        return path
    }
}

#Preview {
    ControlPanelChartComponent(data: [
        "New Orders": 120,
        "Delivered": 30,
        "Canceled": 150,
        "Returned": 10
    ])
}

