.class Lcom/oneplus/lib/app/appcompat/AppCompatResources$ColorStateListCacheEntry;
.super Ljava/lang/Object;
.source "AppCompatResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/AppCompatResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorStateListCacheEntry"
.end annotation


# instance fields
.field final configuration:Landroid/content/res/Configuration;

.field final value:Landroid/content/res/ColorStateList;


# direct methods
.method constructor <init>(Landroid/content/res/ColorStateList;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatResources$ColorStateListCacheEntry;->value:Landroid/content/res/ColorStateList;

    iput-object p2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatResources$ColorStateListCacheEntry;->configuration:Landroid/content/res/Configuration;

    return-void
.end method
