.class Ldfj;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldfi;


# direct methods
.method constructor <init>(Ldfi;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Ldfj;->a:Ldfi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 172
    iget-object v2, p0, Ldfj;->a:Ldfi;

    monitor-enter v2

    .line 173
    :try_start_0
    iget-object v3, p0, Ldfj;->a:Ldfi;

    invoke-static {v3}, Ldfi;->a(Ldfi;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    iget-object v1, p0, Ldfj;->a:Ldfi;

    invoke-static {v1}, Ldfi;->b(Ldfi;)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 174
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 173
    goto :goto_0

    .line 178
    :cond_1
    :try_start_1
    iget-object v0, p0, Ldfj;->a:Ldfi;

    invoke-static {v0}, Ldfi;->c(Ldfi;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    :goto_2
    :try_start_2
    iget-object v0, p0, Ldfj;->a:Ldfi;

    invoke-static {v0}, Ldfi;->d(Ldfi;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Ldfj;->a:Ldfi;

    invoke-static {v0}, Ldfi;->e(Ldfi;)V

    .line 186
    iget-object v0, p0, Ldfj;->a:Ldfi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldfi;->a(Ldfi;I)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    :cond_2
    :goto_3
    :try_start_3
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    :try_start_4
    iget-object v0, p0, Ldfj;->a:Ldfi;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldfi;->a(Ldfi;Z)Z

    goto :goto_2

    .line 188
    :catch_1
    move-exception v0

    .line 189
    iget-object v0, p0, Ldfj;->a:Ldfi;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldfi;->b(Ldfi;Z)Z

    .line 190
    iget-object v0, p0, Ldfj;->a:Ldfi;

    invoke-static {}, Ldfi;->d()Lokio/aa;

    move-result-object v1

    invoke-static {v1}, Lokio/q;->a(Lokio/aa;)Lokio/i;

    move-result-object v1

    invoke-static {v0, v1}, Ldfi;->a(Ldfi;Lokio/i;)Lokio/i;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method
