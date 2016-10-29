.class public Lcbc;
.super Lcbm;
.source "Twttr"


# static fields
.field private static final a:Lcbc;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcbc;

    invoke-direct {v0}, Lcbc;-><init>()V

    sput-object v0, Lcbc;->a:Lcbc;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcbm;-><init>()V

    return-void
.end method

.method public static b()Lcbc;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcbc;->a:Lcbc;

    return-object v0
.end method


# virtual methods
.method public c()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcbc;->b:Z

    return v0
.end method

.method protected f()V
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "ranked_timeline_visual_indicators"

    .line 29
    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcbc;->b:Z

    .line 30
    return-void
.end method
