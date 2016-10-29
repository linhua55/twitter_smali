.class final Ltv/periscope/model/d;
.super Ltv/periscope/model/q;
.source "Twttr"


# instance fields
.field private final a:Ltv/periscope/model/o;


# direct methods
.method constructor <init>(Ltv/periscope/model/o;)V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ltv/periscope/model/q;-><init>()V

    .line 13
    if-nez p1, :cond_0

    .line 14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Null broadcast"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_0
    iput-object p1, p0, Ltv/periscope/model/d;->a:Ltv/periscope/model/o;

    .line 17
    return-void
.end method


# virtual methods
.method public a()Ltv/periscope/model/o;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Ltv/periscope/model/d;->a:Ltv/periscope/model/o;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 33
    if-ne p1, p0, :cond_0

    .line 34
    const/4 v0, 0x1

    .line 40
    :goto_0
    return v0

    .line 36
    :cond_0
    instance-of v0, p1, Ltv/periscope/model/q;

    if-eqz v0, :cond_1

    .line 37
    check-cast p1, Ltv/periscope/model/q;

    .line 38
    iget-object v0, p0, Ltv/periscope/model/d;->a:Ltv/periscope/model/o;

    invoke-virtual {p1}, Ltv/periscope/model/q;->a()Ltv/periscope/model/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 45
    .line 46
    const v0, 0xf4243

    .line 47
    iget-object v1, p0, Ltv/periscope/model/d;->a:Ltv/periscope/model/o;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 48
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BroadcastSummary{broadcast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/model/d;->a:Ltv/periscope/model/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
