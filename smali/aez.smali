.class final Laez;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/object/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/object/c",
        "<",
        "Ljava/lang/Long;",
        "Lbpx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/twitter/library/client/Session;

.field final synthetic c:Lcet;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcet;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Laez;->a:Landroid/content/Context;

    iput-object p2, p0, Laez;->b:Lcom/twitter/library/client/Session;

    iput-object p3, p0, Laez;->c:Lcet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)Lbpx;
    .locals 6

    .prologue
    .line 108
    new-instance v0, Lbpx;

    iget-object v1, p0, Laez;->a:Landroid/content/Context;

    iget-object v2, p0, Laez;->b:Lcom/twitter/library/client/Session;

    iget-object v3, p0, Laez;->c:Lcet;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lbpx;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcet;J)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Laez;->a(Ljava/lang/Long;)Lbpx;

    move-result-object v0

    return-object v0
.end method
