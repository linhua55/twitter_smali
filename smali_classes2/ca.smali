.class public Lca;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbx;


# static fields
.field private static final a:Lca;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lca;

    invoke-direct {v0}, Lca;-><init>()V

    sput-object v0, Lca;->a:Lca;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static b()Lca;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lca;->a:Lca;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
