.class public final Lcom/android/systemui/SystemUIFactory_ProvideNotificationInterruptionStateProviderFactory;
.super Ljava/lang/Object;
.source "SystemUIFactory_ProvideNotificationInterruptionStateProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/android/systemui/SystemUIFactory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/SystemUIFactory;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/SystemUIFactory_ProvideNotificationInterruptionStateProviderFactory;->module:Lcom/android/systemui/SystemUIFactory;

    iput-object p2, p0, Lcom/android/systemui/SystemUIFactory_ProvideNotificationInterruptionStateProviderFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;)Lcom/android/systemui/SystemUIFactory_ProvideNotificationInterruptionStateProviderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/SystemUIFactory;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/systemui/SystemUIFactory_ProvideNotificationInterruptionStateProviderFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/SystemUIFactory_ProvideNotificationInterruptionStateProviderFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/SystemUIFactory_ProvideNotificationInterruptionStateProviderFactory;-><init>(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/SystemUIFactory;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;"
        }
    .end annotation

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/systemui/SystemUIFactory_ProvideNotificationInterruptionStateProviderFactory;->proxyProvideNotificationInterruptionStateProvider(Lcom/android/systemui/SystemUIFactory;Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideNotificationInterruptionStateProvider(Lcom/android/systemui/SystemUIFactory;Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/SystemUIFactory;->provideNotificationInterruptionStateProvider(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SystemUIFactory_ProvideNotificationInterruptionStateProviderFactory;->module:Lcom/android/systemui/SystemUIFactory;

    iget-object p0, p0, Lcom/android/systemui/SystemUIFactory_ProvideNotificationInterruptionStateProviderFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/SystemUIFactory_ProvideNotificationInterruptionStateProviderFactory;->provideInstance(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/SystemUIFactory_ProvideNotificationInterruptionStateProviderFactory;->get()Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    move-result-object p0

    return-object p0
.end method
