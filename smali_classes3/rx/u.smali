.class public abstract Lrx/u;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/ap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ldje;)Lrx/ap;
.end method

.method public a(Ldje;JJLjava/util/concurrent/TimeUnit;)Lrx/ap;
    .locals 14

    .prologue
    .line 122
    move-object/from16 v0, p6

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v12

    .line 123
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lrx/u;->c()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    .line 124
    move-object/from16 v0, p6

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    add-long v8, v6, v4

    .line 126
    new-instance v10, Ldly;

    invoke-direct {v10}, Ldly;-><init>()V

    .line 127
    new-instance v4, Lrx/v;

    move-object v5, p0

    move-object v11, p1

    invoke-direct/range {v4 .. v13}, Lrx/v;-><init>(Lrx/u;JJLdly;Ldje;J)V

    .line 158
    new-instance v5, Ldly;

    invoke-direct {v5}, Ldly;-><init>()V

    .line 160
    invoke-virtual {v10, v5}, Ldly;->a(Lrx/ap;)V

    .line 161
    move-wide/from16 v0, p2

    move-object/from16 v2, p6

    invoke-virtual {p0, v4, v0, v1, v2}, Lrx/u;->a(Ldje;JLjava/util/concurrent/TimeUnit;)Lrx/ap;

    move-result-object v4

    invoke-virtual {v5, v4}, Ldly;->a(Lrx/ap;)V

    .line 162
    return-object v10
.end method

.method public abstract a(Ldje;JLjava/util/concurrent/TimeUnit;)Lrx/ap;
.end method

.method public c()J
    .locals 2

    .prologue
    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
