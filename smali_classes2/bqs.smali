.class public Lbqs;
.super Lbqr;
.source "Twttr"


# instance fields
.field private final a:I

.field private final b:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;IJ)V
    .locals 2

    .prologue
    .line 19
    const-class v0, Lbqs;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lbqr;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 20
    iput p3, p0, Lbqs;->a:I

    .line 21
    iput-wide p4, p0, Lbqs;->b:J

    .line 22
    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/library/provider/b;)V
    .locals 6

    .prologue
    .line 27
    invoke-virtual {p0}, Lbqs;->s()Lcom/twitter/library/provider/dm;

    move-result-object v0

    iget v1, p0, Lbqs;->a:I

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    iget-wide v4, p0, Lbqs;->b:J

    aput-wide v4, v2, v3

    invoke-virtual {v0, v1, v2, p1}, Lcom/twitter/library/provider/dm;->a(I[JLcom/twitter/library/provider/b;)I

    .line 28
    return-void
.end method
