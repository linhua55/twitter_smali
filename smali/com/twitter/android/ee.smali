.class Lcom/twitter/android/ee;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/DialogActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/DialogActivity;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/twitter/android/ee;->a:Lcom/twitter/android/DialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 183
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/twitter/android/ee;->a:Lcom/twitter/android/DialogActivity;

    iget-object v1, p0, Lcom/twitter/android/ee;->a:Lcom/twitter/android/DialogActivity;

    const v2, 0x7f0a0b0f

    .line 185
    invoke-virtual {v1, v2}, Lcom/twitter/android/DialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 184
    invoke-static {v0, v1}, Lcom/twitter/library/util/an;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 187
    :cond_0
    return-void
.end method
