.class public Lcom/oneplus/settings/better/OPGameAndReadPickActivity;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPGameAndReadPickActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mAppListView:Landroid/widget/ListView;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mAppType:I

.field private mHandler:Landroid/os/Handler;

.field private mLoadingContainer:Landroid/view/View;

.field private mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

.field private mOPGameAndReadPickAdapter:Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppList:Ljava/util/List;

    new-instance v0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;-><init>(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mOPGameAndReadPickAdapter:Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Lcom/oneplus/settings/apploader/OPApplicationLoader;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppType:I

    return v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private initView()V
    .locals 5

    const v0, 0x7f0a0485

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppListView:Landroid/widget/ListView;

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppListView:Landroid/widget/ListView;

    const v2, 0x7f080547

    const v3, 0x7f080546

    const v4, 0x7f07037c

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/settings/utils/OPUtils;->setListDivider(Landroid/content/Context;Landroid/widget/ListView;III)V

    new-instance v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mOPGameAndReadPickAdapter:Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mOPGameAndReadPickAdapter:Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0a03a6

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mLoadingContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->setmLoadingContainer(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppType:I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->loadSelectedGameOrReadAppMap(I)Ljava/util/Map;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->initData(ILandroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d01be

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "op_load_app_tyep"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppType:I

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    iget v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppType:I

    const/16 v2, 0x3ec

    if-ne v1, v2, :cond_0

    const v1, 0x7f120d1b

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x3eb

    if-ne v1, v2, :cond_1

    const v1, 0x7f120e84

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x3e9

    if-ne v1, v2, :cond_2

    const v1, 0x7f120bc2

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    const-string v1, "appops"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v1, Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v2, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v3, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v1, p0, v2, v3}, Lcom/oneplus/settings/apploader/OPApplicationLoader;-><init>(Landroid/content/Context;Landroid/app/AppOpsManager;Landroid/content/pm/PackageManager;)V

    iput-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget v2, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppType:I

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->setAppType(I)V

    invoke-direct {p0}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->initView()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/better/OPAppModel;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mOPGameAndReadPickAdapter:Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;

    invoke-virtual {v1, p3}, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->getSelected(I)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iget-object v3, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mOPGameAndReadPickAdapter:Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;

    invoke-virtual {v3, p3, v1}, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->setSelected(IZ)V

    iget-object v3, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v4, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppType:I

    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v5

    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v6

    if-eqz v1, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    move v7, v2

    :goto_0
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->getGameModeAppListString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->getGameModeAppString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v0}, Lcom/oneplus/settings/utils/OPUtils;->isInRemovedGameAppListString(Landroid/content/Context;Lcom/oneplus/settings/better/OPAppModel;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/better/OPAppModel;->setEditMode(Z)V

    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->isEditMode()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v2, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_2
    goto :goto_1

    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/oneplus/settings/utils/OPUtils;->saveGameModeRemovedAppLisStrings(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
