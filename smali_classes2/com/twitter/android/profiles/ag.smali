.class final Lcom/twitter/android/profiles/ag;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/twitter/android/profiles/ag;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/twitter/android/profiles/ag;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/profiles/ag;->a:Landroid/content/Context;

    const v2, 0x7f0a0b1a

    .line 24
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/twitter/library/util/an;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 25
    return-void
.end method
