.class Lcom/oneplus/support/core/app/ActivityCompat$SharedElementCallback21Impl;
.super Landroid/app/SharedElementCallback;
.source "ActivityCompat.java"


# annotations
.annotation build Lcom/oneplus/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/app/ActivityCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SharedElementCallback21Impl"
.end annotation


# instance fields
.field protected mCallback:Lcom/oneplus/support/core/app/SharedElementCallback;


# direct methods
.method constructor <init>(Lcom/oneplus/support/core/app/SharedElementCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/SharedElementCallback;-><init>()V

    iput-object p1, p0, Lcom/oneplus/support/core/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Lcom/oneplus/support/core/app/SharedElementCallback;

    return-void
.end method


# virtual methods
.method public onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Lcom/oneplus/support/core/app/SharedElementCallback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/support/core/app/SharedElementCallback;->onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Lcom/oneplus/support/core/app/SharedElementCallback;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/support/core/app/SharedElementCallback;->onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/support/core/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Lcom/oneplus/support/core/app/SharedElementCallback;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/support/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public onRejectSharedElements(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/support/core/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Lcom/oneplus/support/core/app/SharedElementCallback;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/core/app/SharedElementCallback;->onRejectSharedElements(Ljava/util/List;)V

    return-void
.end method

.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/support/core/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Lcom/oneplus/support/core/app/SharedElementCallback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/support/core/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/support/core/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Lcom/oneplus/support/core/app/SharedElementCallback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/support/core/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
