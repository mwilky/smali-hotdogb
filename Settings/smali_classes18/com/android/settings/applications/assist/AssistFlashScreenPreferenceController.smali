.class public Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AssistFlashScreenPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$SettingObserver;
    }
.end annotation


# static fields
.field private static final KEY_FLASH:Ljava/lang/String; = "flash"


# instance fields
.field private final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private mPreference:Landroidx/preference/Preference;

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private final mSettingObserver:Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$SettingObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    new-instance v0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$SettingObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$SettingObserver;-><init>(Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mSettingObserver:Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$SettingObserver;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->updatePreference()V

    return-void
.end method

.method private getCurrentAssist()Landroid/content/ComponentName;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private updatePreference()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_4

    instance-of v0, v0, Landroidx/preference/TwoStatePreference;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->isChecked(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->isPreInstalledAssistant(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v2, Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->willShowFlash(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method allowDisablingAssistDisclosure()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/app/AssistUtils;->allowDisablingAssistDisclosure(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "flash"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->allowDisablingAssistDisclosure()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isPreInstalledAssistant(Landroid/content/ComponentName;)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/app/AssistUtils;->isPreinstalledAssistant(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mSettingObserver:Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "assist_disclosure_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mSettingObserver:Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->updatePreference()V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->updatePreference()V

    return-void
.end method

.method willShowFlash(Landroid/content/ComponentName;)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/app/AssistUtils;->shouldDisclose(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method
