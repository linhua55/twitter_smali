.class public Lcwv;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcws;


# instance fields
.field private b:F

.field private final c:F

.field private d:F

.field private final e:Lcww;

.field private final f:Lcww;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcww;

    invoke-direct {v0}, Lcww;-><init>()V

    new-instance v1, Lcww;

    invoke-direct {v1}, Lcww;-><init>()V

    invoke-direct {p0, v0, v1}, Lcwv;-><init>(Lcww;Lcww;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcww;Lcww;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcwv;->b:F

    .line 13
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcwv;->c:F

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcwv;->d:F

    .line 30
    iput-object p1, p0, Lcwv;->e:Lcww;

    .line 31
    iput-object p2, p0, Lcwv;->f:Lcww;

    .line 32
    return-void
.end method
