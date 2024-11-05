import SwiftUI

struct CustomShape: Shape {
    var strokeWidth: CGFloat

    // Conform to the Animatable protocol
    public var animatableData: CGFloat {
        get { strokeWidth }
        set { strokeWidth = newValue }
    }

    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addEllipse(in: rect.insetBy(dx: strokeWidth / 2, dy: strokeWidth / 2))
        return path
    }
}

struct ContentView: View {
    @State private var strokeWidth: CGFloat = 10

    var body: some View {
        CustomShape(strokeWidth: strokeWidth)
            .stroke(lineWidth: strokeWidth)
            .animation(.linear(duration: 2))
            .onTapGesture {
                self.strokeWidth = self.strokeWidth == 10 ? 50 : 10
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
