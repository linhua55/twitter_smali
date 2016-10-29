.class Lahm;
.super Lach;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lach",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lahl;


# direct methods
.method constructor <init>(Lahl;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lahm;->c:Lahl;

    iput-wide p2, p0, Lahm;->a:J

    iput-object p4, p0, Lahm;->b:Ljava/lang/String;

    invoke-direct {p0}, Lach;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 255
    iget-wide v0, p0, Lahm;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 256
    iget-object v0, p0, Lahm;->c:Lahl;

    iget-object v1, v0, Lahl;->a:Lahi;

    iget-wide v2, p0, Lahm;->a:J

    iget-object v4, p0, Lahm;->b:Ljava/lang/String;

    iget-object v0, p0, Lahm;->c:Lahl;

    invoke-static {v0}, Lahl;->a(Lahl;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v1 .. v6}, Lahi;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 257
    return-void
.end method

.method public synthetic b_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 252
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lahm;->a(Ljava/util/Map;)V

    return-void
.end method
