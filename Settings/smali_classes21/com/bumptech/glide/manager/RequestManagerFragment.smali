.class public Lcom/bumptech/glide/manager/RequestManagerFragment;
.super Landroid/app/Fragment;
.source "RequestManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/manager/RequestManagerFragment$FragmentRequestManagerTreeNode;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RMFragment"


# instance fields
.field private final childRequestManagerFragments:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/manager/RequestManagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

.field private parentFragmentHint:Landroid/app/Fragment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private requestManager:Lcom/bumptech/glide/RequestManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final requestManagerTreeNode:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

.field private rootRequestManagerFragment:Lcom/bumptech/glide/manager/RequestManagerFragment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;-><init>()V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/manager/RequestManagerFragment;-><init>(Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/bumptech/glide/manager/RequestManagerFragment$FragmentRequestManagerTreeNode;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerFragment$FragmentRequestManagerTreeNode;-><init>(Lcom/bumptech/glide/manager/RequestManagerFragment;)V

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->requestManagerTreeNode:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->childRequestManagerFragments:Ljava/util/Set;

    iput-object p1, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    return-void
.end method

.method private addChildRequestManagerFragment(Lcom/bumptech/glide/manager/RequestManagerFragment;)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->childRequestManagerFragments:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getParentFragmentUsingHint()Landroid/app/Fragment;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->parentFragmentHint:Landroid/app/Fragment;

    :goto_1
    return-object v1
.end method

.method private isDescendant(Landroid/app/Fragment;)Z
    .locals 3
    .param p1    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Landroid/app/Fragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v0}, Landroid/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/app/Fragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private registerFragmentWithRoot(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->unregisterFragmentWithRoot()V

    nop

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->getRequestManagerRetriever()Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->getRequestManagerFragment(Landroid/app/Activity;)Lcom/bumptech/glide/manager/RequestManagerFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/RequestManagerFragment;

    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/RequestManagerFragment;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/RequestManagerFragment;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->addChildRequestManagerFragment(Lcom/bumptech/glide/manager/RequestManagerFragment;)V

    :cond_0
    return-void
.end method

.method private removeChildRequestManagerFragment(Lcom/bumptech/glide/manager/RequestManagerFragment;)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->childRequestManagerFragments:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private unregisterFragmentWithRoot()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/RequestManagerFragment;

    if-eqz v0, :cond_0

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->removeChildRequestManagerFragment(Lcom/bumptech/glide/manager/RequestManagerFragment;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/RequestManagerFragment;

    :cond_0
    return-void
.end method


# virtual methods
.method getDescendantRequestManagerFragments()Ljava/util/Set;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/manager/RequestManagerFragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/RequestManagerFragment;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->childRequestManagerFragments:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/RequestManagerFragment;

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/RequestManagerFragment;

    invoke-virtual {v1}, Lcom/bumptech/glide/manager/RequestManagerFragment;->getDescendantRequestManagerFragments()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/manager/RequestManagerFragment;

    invoke-virtual {v2}, Lcom/bumptech/glide/manager/RequestManagerFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/bumptech/glide/manager/RequestManagerFragment;->isDescendant(Landroid/app/Fragment;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    goto :goto_0

    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    :cond_4
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getGlideLifecycle()Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    return-object v0
.end method

.method public getRequestManager()Lcom/bumptech/glide/RequestManager;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->requestManager:Lcom/bumptech/glide/RequestManager;

    return-object v0
.end method

.method public getRequestManagerTreeNode()Lcom/bumptech/glide/manager/RequestManagerTreeNode;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->requestManagerTreeNode:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/manager/RequestManagerFragment;->registerFragmentWithRoot(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x5

    const-string v2, "RMFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Unable to register fragment with root"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->onDestroy()V

    invoke-direct {p0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->unregisterFragmentWithRoot()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    invoke-direct {p0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->unregisterFragmentWithRoot()V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->onStop()V

    return-void
.end method

.method setParentFragmentHint(Landroid/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->parentFragmentHint:Landroid/app/Fragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->registerFragmentWithRoot(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public setRequestManager(Lcom/bumptech/glide/RequestManager;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/RequestManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->requestManager:Lcom/bumptech/glide/RequestManager;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->getParentFragmentUsingHint()Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method