.class Lcom/twitter/android/ep;
.super Lcom/twitter/util/ui/e;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/EditProfileActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/EditProfileActivity;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/twitter/android/ep;->a:Lcom/twitter/android/EditProfileActivity;

    invoke-direct {p0}, Lcom/twitter/util/ui/e;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/twitter/android/ep;->a:Lcom/twitter/android/EditProfileActivity;

    invoke-virtual {v0}, Lcom/twitter/android/EditProfileActivity;->Z()Lcyj;

    move-result-object v0

    invoke-virtual {v0}, Lcyj;->h()V

    .line 222
    return-void
.end method
