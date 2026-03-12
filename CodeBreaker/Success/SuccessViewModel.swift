class SuccessViewModel {
    private let router: RouteModifiable

    init(router: RouteModifiable) {
        self.router = router
    }

    func returnToEncodeView() {
        router.showEncode()
    }
}
