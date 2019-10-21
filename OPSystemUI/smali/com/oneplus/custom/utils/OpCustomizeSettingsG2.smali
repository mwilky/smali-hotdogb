.class public Lcom/oneplus/custom/utils/OpCustomizeSettingsG2;
.super Lcom/oneplus/custom/utils/OpCustomizeSettings;
.source "OpCustomizeSettingsG2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/custom/utils/OpCustomizeSettings;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCustomization()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;
    .registers 4

    .line 11
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->NONE:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    .line 12
    .local v0, "custom_type":Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;
    invoke-static {}, Lcom/oneplus/custom/utils/ParamReader;->getCustFlagVal()I

    move-result v1

    .line 13
    .local v1, "custFlagVal":I
    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettingsG2;->getMCL()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 14
    sget-object v2, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->MCL:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    return-object v2

    .line 16
    :cond_f
    const/4 v2, 0x3

    if-ne v1, v2, :cond_15

    .line 17
    sget-object v2, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->AVG:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    return-object v2

    .line 19
    :cond_15
    const/4 v2, 0x6

    if-ne v1, v2, :cond_1b

    .line 20
    sget-object v2, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->MCL:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    return-object v2

    .line 22
    :cond_1b
    const/4 v2, 0x7

    if-eq v1, v2, :cond_21

    .line 23
    sget-object v2, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->NONE:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    return-object v2

    .line 25
    :cond_21
    sget-object v2, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->OPR_RETAIL:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    return-object v2
.end method

.method public static getMCL()Z
    .registers 5

    .line 29
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xe

    new-array v1, v1, [C

    fill-array-data v1, :array_40

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0}, Lcom/oneplus/custom/utils/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x14

    new-array v2, v2, [C

    fill-array-data v2, :array_52

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    .line 31
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3e

    if-eqz v0, :cond_3e

    new-instance v3, Ljava/lang/String;

    const/16 v4, 0x8

    new-array v4, v4, [C

    fill-array-data v4, :array_6a

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3c

    goto :goto_3e

    .line 35
    :cond_3c
    const/4 v3, 0x1

    return v3

    .line 33
    :cond_3e
    :goto_3e
    const/4 v3, 0x0

    return v3

    :array_40
    .array-data 2
        0x72s
        0x6fs
        0x2es
        0x72s
        0x6fs
        0x6ds
        0x2es
        0x76s
        0x65s
        0x72s
        0x73s
        0x69s
        0x6fs
        0x6es
    .end array-data

    :array_52
    .array-data 2
        0x2fs
        0x73s
        0x79s
        0x73s
        0x74s
        0x65s
        0x6ds
        0x2fs
        0x65s
        0x74s
        0x63s
        0x2fs
        0x72s
        0x65s
        0x6es
        0x6fs
        0x76s
        0x61s
        0x74s
        0x65s
    .end array-data

    :array_6a
    .array-data 2
        0x52s
        0x45s
        0x4es
        0x4fs
        0x56s
        0x41s
        0x54s
        0x45s
    .end array-data
.end method
