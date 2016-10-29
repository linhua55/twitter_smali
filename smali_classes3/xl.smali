.class Lxl;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lxk;


# direct methods
.method constructor <init>(Lxk;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lxl;->a:Lxk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lxl;->a:Lxk;

    iget-object v0, v0, Lxk;->g:Landroid/content/Context;

    iget-object v1, p0, Lxl;->a:Lxk;

    invoke-static {v1}, Lxk;->a(Lxk;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/android/DMConversationFragment;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    return-void
.end method
