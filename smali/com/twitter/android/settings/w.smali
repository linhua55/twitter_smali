.class Lcom/twitter/android/settings/w;
.super Lcom/twitter/library/service/z;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/settings/PrivacyAndContentActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/settings/PrivacyAndContentActivity;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/twitter/android/settings/w;->a:Lcom/twitter/android/settings/PrivacyAndContentActivity;

    invoke-direct {p0}, Lcom/twitter/library/service/z;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 242
    check-cast p1, Lcom/twitter/library/service/x;

    invoke-virtual {p0, p1}, Lcom/twitter/android/settings/w;->a(Lcom/twitter/library/service/x;)V

    return-void
.end method

.method public a(Lcom/twitter/library/service/x;)V
    .locals 3

    .prologue
    .line 245
    move-object v0, p1

    check-cast v0, Lbuf;

    invoke-virtual {v0}, Lbuf;->e()Lbvd;

    move-result-object v0

    .line 246
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->U()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0}, Lbvd;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/twitter/android/settings/w;->a:Lcom/twitter/android/settings/PrivacyAndContentActivity;

    invoke-static {v0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->a(Lcom/twitter/android/settings/PrivacyAndContentActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/settings/w;->a:Lcom/twitter/android/settings/PrivacyAndContentActivity;

    const v2, 0x7f0a078e

    invoke-virtual {v1, v2}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 251
    :cond_0
    return-void
.end method
