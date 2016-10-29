.class Lcom/twitter/android/settings/x;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/util/am;


# instance fields
.field final synthetic a:Lcom/twitter/android/settings/PrivacyAndContentActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/settings/PrivacyAndContentActivity;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/twitter/android/settings/x;->a:Lcom/twitter/android/settings/PrivacyAndContentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c_(Z)V
    .locals 3

    .prologue
    .line 275
    if-nez p1, :cond_0

    .line 276
    iget-object v0, p0, Lcom/twitter/android/settings/x;->a:Lcom/twitter/android/settings/PrivacyAndContentActivity;

    invoke-static {v0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->b(Lcom/twitter/android/settings/PrivacyAndContentActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/settings/x;->a:Lcom/twitter/android/settings/PrivacyAndContentActivity;

    const v2, 0x7f0a0791

    invoke-virtual {v1, v2}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 279
    :cond_0
    return-void
.end method
