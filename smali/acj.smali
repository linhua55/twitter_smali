.class public Lacj;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lazt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lazt",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Long;


# instance fields
.field private final b:Lazt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lazt",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lazt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lazt",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lacj;->a:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Lazt;Lazt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lazt",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Lazt",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lacj;->b:Lazt;

    .line 51
    iput-object p2, p0, Lacj;->c:Lazt;

    .line 52
    return-void
.end method

.method public static a(Lcom/twitter/database/model/l;)Lacj;
    .locals 5

    .prologue
    .line 33
    new-instance v1, Lacn;

    new-instance v2, Lbaf;

    const-class v0, Lbfi;

    .line 35
    invoke-interface {p0, v0}, Lcom/twitter/database/model/l;->a(Ljava/lang/Class;)Lcom/twitter/database/model/p;

    move-result-object v0

    check-cast v0, Lbfi;

    invoke-interface {v0}, Lbfi;->f()Lcom/twitter/database/model/q;

    move-result-object v0

    new-instance v3, Lacm;

    invoke-direct {v3}, Lacm;-><init>()V

    invoke-direct {v2, v0, v3}, Lbaf;-><init>(Lcom/twitter/database/model/q;Lcmx;)V

    const-string/jumbo v0, "_id"

    invoke-direct {v1, v2, v0}, Lacn;-><init>(Lazt;Ljava/lang/String;)V

    .line 38
    new-instance v2, Lacn;

    new-instance v3, Lbaf;

    const-class v0, Lbfs;

    .line 41
    invoke-interface {p0, v0}, Lcom/twitter/database/model/l;->a(Ljava/lang/Class;)Lcom/twitter/database/model/p;

    move-result-object v0

    check-cast v0, Lbfs;

    invoke-interface {v0}, Lbfs;->f()Lcom/twitter/database/model/q;

    move-result-object v0

    new-instance v4, Lacl;

    invoke-direct {v4}, Lacl;-><init>()V

    invoke-direct {v3, v0, v4}, Lbaf;-><init>(Lcom/twitter/database/model/q;Lcmx;)V

    const-string/jumbo v0, "moment_id"

    invoke-direct {v2, v3, v0}, Lacn;-><init>(Lazt;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lacj;

    invoke-direct {v0, v1, v2}, Lacj;-><init>(Lazt;Lazt;)V

    return-object v0
.end method

.method static synthetic a()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lacj;->a:Ljava/lang/Long;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Long;)Lrx/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Lrx/o",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 57
    iget-object v0, p0, Lacj;->b:Lazt;

    .line 58
    invoke-interface {v0, p1}, Lazt;->a_(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    invoke-virtual {v0, v2}, Lrx/o;->b(I)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lacj;->c:Lazt;

    .line 59
    invoke-interface {v1, p1}, Lazt;->a_(Ljava/lang/Object;)Lrx/o;

    move-result-object v1

    invoke-virtual {v1, v2}, Lrx/o;->b(I)Lrx/o;

    move-result-object v1

    new-instance v2, Lack;

    invoke-direct {v2, p0}, Lack;-><init>(Lacj;)V

    .line 57
    invoke-static {v0, v1, v2}, Lrx/o;->b(Lrx/o;Lrx/o;Ldjk;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a_(Ljava/lang/Object;)Lrx/o;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lacj;->a(Ljava/lang/Long;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lacj;->b:Lazt;

    invoke-interface {v0}, Lazt;->close()V

    .line 73
    iget-object v0, p0, Lacj;->c:Lazt;

    invoke-interface {v0}, Lazt;->close()V

    .line 74
    return-void
.end method
