.class final Lrx/internal/operators/b;
.super Lrx/internal/util/k;
.source "Twttr"

# interfaces
.implements Lrx/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/k;",
        "Lrx/r",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final d:[Lrx/internal/operators/CachedObservable$ReplayProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/CachedObservable$ReplayProducer",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lrx/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/o",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final b:Ldma;

.field volatile c:[Lrx/internal/operators/CachedObservable$ReplayProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/CachedObservable$ReplayProducer",
            "<*>;"
        }
    .end annotation
.end field

.field final e:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile f:Z

.field g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    new-array v0, v0, [Lrx/internal/operators/CachedObservable$ReplayProducer;

    sput-object v0, Lrx/internal/operators/b;->d:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    return-void
.end method

.method public constructor <init>(Lrx/o;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/o",
            "<+TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0, p2}, Lrx/internal/util/k;-><init>(I)V

    .line 117
    iput-object p1, p0, Lrx/internal/operators/b;->a:Lrx/o;

    .line 118
    sget-object v0, Lrx/internal/operators/b;->d:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    iput-object v0, p0, Lrx/internal/operators/b;->c:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    .line 119
    invoke-static {}, Lrx/internal/operators/NotificationLite;->a()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/b;->e:Lrx/internal/operators/NotificationLite;

    .line 120
    new-instance v0, Ldma;

    invoke-direct {v0}, Ldma;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/b;->b:Ldma;

    .line 121
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lrx/internal/operators/b;->g:Z

    if-nez v0, :cond_0

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/b;->g:Z

    .line 201
    iget-object v0, p0, Lrx/internal/operators/b;->e:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 202
    invoke-virtual {p0, v0}, Lrx/internal/operators/b;->b(Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lrx/internal/operators/b;->b:Ldma;

    invoke-virtual {v0}, Ldma;->R_()V

    .line 204
    invoke-virtual {p0}, Lrx/internal/operators/b;->c()V

    .line 206
    :cond_0
    return-void
.end method

.method public a(Lrx/internal/operators/CachedObservable$ReplayProducer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/CachedObservable$ReplayProducer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v1, p0, Lrx/internal/operators/b;->b:Ldma;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/b;->c:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    .line 131
    array-length v2, v0

    .line 132
    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [Lrx/internal/operators/CachedObservable$ReplayProducer;

    .line 133
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v4, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    aput-object p1, v3, v2

    .line 135
    iput-object v3, p0, Lrx/internal/operators/b;->c:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    .line 136
    monitor-exit v1

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 171
    new-instance v0, Lrx/internal/operators/c;

    invoke-direct {v0, p0}, Lrx/internal/operators/c;-><init>(Lrx/internal/operators/b;)V

    .line 185
    iget-object v1, p0, Lrx/internal/operators/b;->b:Ldma;

    invoke-virtual {v1, v0}, Ldma;->a(Lrx/ap;)V

    .line 186
    iget-object v1, p0, Lrx/internal/operators/b;->a:Lrx/o;

    invoke-virtual {v1, v0}, Lrx/o;->a(Lrx/ao;)Lrx/ap;

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/b;->f:Z

    .line 188
    return-void
.end method

.method public b(Lrx/internal/operators/CachedObservable$ReplayProducer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/CachedObservable$ReplayProducer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 143
    iget-object v2, p0, Lrx/internal/operators/b;->b:Ldma;

    monitor-enter v2

    .line 144
    :try_start_0
    iget-object v3, p0, Lrx/internal/operators/b;->c:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    .line 145
    array-length v4, v3

    .line 146
    const/4 v1, -0x1

    .line 147
    :goto_0
    if-ge v0, v4, :cond_3

    .line 148
    aget-object v5, v3, v0

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 153
    :goto_1
    if-gez v0, :cond_1

    .line 154
    monitor-exit v2

    .line 165
    :goto_2
    return-void

    .line 147
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_1
    const/4 v1, 0x1

    if-ne v4, v1, :cond_2

    .line 157
    sget-object v0, Lrx/internal/operators/b;->d:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    iput-object v0, p0, Lrx/internal/operators/b;->c:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    .line 158
    monitor-exit v2

    goto :goto_2

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 160
    :cond_2
    add-int/lit8 v1, v4, -0x1

    :try_start_1
    new-array v1, v1, [Lrx/internal/operators/CachedObservable$ReplayProducer;

    .line 161
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v5, v1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v5, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    iput-object v1, p0, Lrx/internal/operators/b;->c:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    .line 164
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public b_(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 191
    iget-boolean v0, p0, Lrx/internal/operators/b;->g:Z

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lrx/internal/operators/b;->e:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 193
    invoke-virtual {p0, v0}, Lrx/internal/operators/b;->b(Ljava/lang/Object;)V

    .line 194
    invoke-virtual {p0}, Lrx/internal/operators/b;->c()V

    .line 196
    :cond_0
    return-void
.end method

.method public bt_()V
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lrx/internal/operators/b;->g:Z

    if-nez v0, :cond_0

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/b;->g:Z

    .line 211
    iget-object v0, p0, Lrx/internal/operators/b;->e:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0}, Lrx/internal/operators/NotificationLite;->b()Ljava/lang/Object;

    move-result-object v0

    .line 212
    invoke-virtual {p0, v0}, Lrx/internal/operators/b;->b(Ljava/lang/Object;)V

    .line 213
    iget-object v0, p0, Lrx/internal/operators/b;->b:Ldma;

    invoke-virtual {v0}, Ldma;->R_()V

    .line 214
    invoke-virtual {p0}, Lrx/internal/operators/b;->c()V

    .line 216
    :cond_0
    return-void
.end method

.method c()V
    .locals 4

    .prologue
    .line 221
    iget-object v1, p0, Lrx/internal/operators/b;->c:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    .line 222
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 223
    invoke-virtual {v3}, Lrx/internal/operators/CachedObservable$ReplayProducer;->c()V

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_0
    return-void
.end method
