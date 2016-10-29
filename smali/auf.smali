.class public Lauf;
.super Ljava/lang/Object;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lauc;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/app/Activity;

.field protected final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lauf;->a:Landroid/app/Activity;

    .line 31
    iput-object p2, p0, Lauf;->b:Ljava/lang/Class;

    .line 32
    return-void
.end method


# virtual methods
.method protected a(Lauc;)Landroid/content/Intent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p1}, Lauc;->y()Landroid/content/Intent;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lauf;->b:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 38
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lauf;->a:Landroid/app/Activity;

    iget-object v3, p0, Lauf;->b:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 40
    :cond_0
    return-object v0
.end method

.method public b(Lauc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 49
    iget-object v0, p0, Lauf;->a:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lauf;->a(Lauc;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 50
    return-void
.end method
