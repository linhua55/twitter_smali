.class public Lcla;
.super Lcks;
.source "Twttr"


# direct methods
.method public constructor <init>(JJJ)V
    .locals 1

    .prologue
    .line 7
    invoke-direct/range {p0 .. p6}, Lcks;-><init>(JJJ)V

    .line 8
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 12
    iget-wide v0, p0, Lcla;->b:J

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcla;->b:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lcla;->a:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcla;->b:J

    return-wide v0
.end method
