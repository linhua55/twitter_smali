.class public Lddx;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:I

.field private final b:Lddt;

.field private final c:Lddw;


# direct methods
.method public constructor <init>(ILddt;Lddw;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lddx;->a:I

    .line 31
    iput-object p2, p0, Lddx;->b:Lddt;

    .line 32
    iput-object p3, p0, Lddx;->c:Lddw;

    .line 33
    return-void
.end method

.method public constructor <init>(Lddt;Lddw;)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lddx;-><init>(ILddt;Lddw;)V

    .line 27
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lddx;->b:Lddt;

    iget v1, p0, Lddx;->a:I

    invoke-interface {v0, v1}, Lddt;->a(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Lddx;
    .locals 4

    .prologue
    .line 52
    new-instance v0, Lddx;

    iget v1, p0, Lddx;->a:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lddx;->b:Lddt;

    iget-object v3, p0, Lddx;->c:Lddw;

    invoke-direct {v0, v1, v2, v3}, Lddx;-><init>(ILddt;Lddw;)V

    return-object v0
.end method

.method public c()Lddx;
    .locals 3

    .prologue
    .line 56
    new-instance v0, Lddx;

    iget-object v1, p0, Lddx;->b:Lddt;

    iget-object v2, p0, Lddx;->c:Lddw;

    invoke-direct {v0, v1, v2}, Lddx;-><init>(Lddt;Lddw;)V

    return-object v0
.end method
