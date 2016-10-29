.class Lcom/twitter/android/eo;
.super Lcom/twitter/util/ui/e;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/EditProfileActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/EditProfileActivity;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/twitter/android/eo;->a:Lcom/twitter/android/EditProfileActivity;

    invoke-direct {p0}, Lcom/twitter/util/ui/e;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/twitter/android/eo;->a:Lcom/twitter/android/EditProfileActivity;

    invoke-static {v0}, Lcom/twitter/android/EditProfileActivity;->a(Lcom/twitter/android/EditProfileActivity;)Lcom/twitter/android/ig;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/twitter/android/ig;->a(Landroid/text/Editable;)V

    .line 165
    return-void
.end method
