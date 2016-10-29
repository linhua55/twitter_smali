.class public Lcom/twitter/app/mentions/b;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/twitter/app/mentions/b;->a:Landroid/content/Context;

    .line 19
    iput-boolean p2, p0, Lcom/twitter/app/mentions/b;->b:Z

    .line 20
    return-void
.end method

.method static a(Lcom/twitter/android/kh;Z)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 32
    const-string/jumbo v1, "type"

    if-eqz p1, :cond_0

    const/16 v0, 0x18

    .line 33
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/kh;->a(Ljava/lang/String;I)Lcom/twitter/app/common/base/g;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/kh;

    .line 35
    invoke-virtual {v0, p1}, Lcom/twitter/android/kh;->a(Z)Lcom/twitter/android/kh;

    move-result-object v0

    const v1, 0x7f0a037d

    .line 36
    invoke-virtual {v0, v1}, Lcom/twitter/android/kh;->b(I)Lcom/twitter/app/common/list/x;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/kh;

    const v1, 0x7f0a037e

    .line 37
    invoke-virtual {v0, v1}, Lcom/twitter/android/kh;->c(I)Lcom/twitter/app/common/list/x;

    .line 38
    const-class v0, Lcom/twitter/app/mentions/MentionsTimelineFragment;

    return-object v0

    .line 32
    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/twitter/android/kh;)Lcom/twitter/app/common/list/TwitterListFragment;
    .locals 3

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/twitter/app/mentions/b;->b:Z

    invoke-static {p1, v0}, Lcom/twitter/app/mentions/b;->a(Lcom/twitter/android/kh;Z)Ljava/lang/Class;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/twitter/app/mentions/b;->a:Landroid/content/Context;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twitter/android/kh;->e()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v0, v2}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/TwitterListFragment;

    .line 25
    return-object v0
.end method
