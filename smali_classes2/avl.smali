.class Lavl;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lavg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lavg",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lavg;

.field final synthetic b:Lavk;


# direct methods
.method constructor <init>(Lavk;Lavg;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lavl;->b:Lavk;

    iput-object p2, p0, Lavl;->a:Lavg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lavl;->a:Lavg;

    iget-object v1, p0, Lavl;->b:Lavk;

    invoke-static {v1}, Lavk;->a(Lavk;)Lcom/twitter/database/model/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/twitter/database/model/p;->f()Lcom/twitter/database/model/q;

    move-result-object v1

    invoke-static {p1, v1}, Lcmz;->a(Landroid/database/Cursor;Lcom/twitter/database/model/q;)Lcom/twitter/database/model/j;

    move-result-object v1

    invoke-interface {v0, v1}, Lavg;->a(Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lavl;->a(Landroid/database/Cursor;)V

    return-void
.end method
