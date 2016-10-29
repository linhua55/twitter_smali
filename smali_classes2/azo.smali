.class Lazo;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjj",
        "<",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lavh;

.field final synthetic b:Lazn;


# direct methods
.method constructor <init>(Lazn;Lavh;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lazo;->b:Lazn;

    iput-object p2, p0, Lazo;->a:Lavh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 81
    invoke-static {}, Lcom/twitter/util/h;->c()V

    .line 82
    iget-object v0, p0, Lazo;->b:Lazn;

    invoke-static {v0}, Lazn;->a(Lazn;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v6

    .line 94
    :goto_0
    return-object v0

    .line 85
    :cond_0
    iget-object v0, p0, Lazo;->b:Lazn;

    invoke-static {v0}, Lazn;->b(Lazn;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lazo;->a:Lavh;

    iget-object v1, v1, Lavh;->a:Landroid/net/Uri;

    iget-object v2, p0, Lazo;->a:Lavh;

    iget-object v2, v2, Lavh;->b:[Ljava/lang/String;

    iget-object v3, p0, Lazo;->a:Lavh;

    iget-object v3, v3, Lavh;->c:Ljava/lang/String;

    iget-object v4, p0, Lazo;->a:Lavh;

    iget-object v4, v4, Lavh;->d:[Ljava/lang/String;

    iget-object v5, p0, Lazo;->a:Lavh;

    iget-object v5, v5, Lavh;->e:Ljava/lang/String;

    .line 86
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lazo;->b:Lazn;

    invoke-static {v1}, Lazn;->c(Lazn;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 88
    :try_start_0
    iget-object v2, p0, Lazo;->b:Lazn;

    invoke-static {v2}, Lazn;->a(Lazn;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    invoke-static {v0}, Ldbt;->a(Landroid/database/Cursor;)V

    .line 90
    monitor-exit v1

    move-object v0, v6

    goto :goto_0

    .line 92
    :cond_1
    iget-object v2, p0, Lazo;->b:Lazn;

    invoke-static {v2}, Lazn;->c(Lazn;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lazo;->a(Ljava/lang/Void;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
