.class public Lcom/twitter/database/internal/h;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/database/model/n;


# instance fields
.field protected final a:Lcom/twitter/database/internal/f;

.field private final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/twitter/database/model/p;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/twitter/database/model/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/twitter/database/internal/f;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/twitter/database/internal/h;->a:Lcom/twitter/database/internal/f;

    .line 40
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/database/internal/h;->b:Ljava/util/Collection;

    .line 41
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/database/internal/h;->c:Ljava/util/Collection;

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/database/internal/f;Lcom/twitter/database/internal/i;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/twitter/database/internal/h;-><init>(Lcom/twitter/database/internal/f;)V

    return-void
.end method

.method private a(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/twitter/database/internal/h;->a()Lcom/twitter/database/model/w;

    move-result-object v1

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/twitter/database/internal/h;->a:Lcom/twitter/database/internal/f;

    invoke-virtual {v0}, Lcom/twitter/database/internal/f;->e()Lcom/twitter/database/model/b;

    move-result-object v2

    .line 220
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 221
    invoke-interface {v2, v0}, Lcom/twitter/database/model/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 225
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/twitter/database/model/w;->close()V

    throw v0

    .line 223
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/twitter/database/model/w;->a()Lcom/twitter/database/model/w;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    invoke-interface {v1}, Lcom/twitter/database/model/w;->close()V

    .line 227
    return-void
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 230
    invoke-static {p2}, Lcom/twitter/util/collection/r;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/twitter/database/internal/i;

    invoke-direct {v1, p0, p1}, Lcom/twitter/database/internal/i;-><init>(Lcom/twitter/database/internal/h;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lczz;->a(Ljava/lang/Iterable;Lczn;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/database/internal/h;->a(Ljava/lang/Iterable;)V

    .line 238
    return-void
.end method

.method private d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/database/model/p;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 244
    iget-object v0, p0, Lcom/twitter/database/internal/h;->c:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 245
    iget-object v0, p0, Lcom/twitter/database/internal/h;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/database/model/p;

    .line 246
    invoke-interface {v0}, Lcom/twitter/database/model/p;->i()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 250
    :cond_0
    new-instance v0, Lcom/twitter/database/internal/j;

    invoke-direct {v0, p0}, Lcom/twitter/database/internal/j;-><init>(Lcom/twitter/database/internal/h;)V

    invoke-static {v1, v0}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/util/Collection;Lczn;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/database/model/w;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/twitter/database/internal/h;->a:Lcom/twitter/database/internal/f;

    invoke-virtual {v0}, Lcom/twitter/database/internal/f;->h()Lcom/twitter/database/model/w;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/p;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {}, Lcom/twitter/util/j;->c()V

    .line 54
    iget-object v0, p0, Lcom/twitter/database/internal/h;->a:Lcom/twitter/database/internal/f;

    invoke-virtual {v0, p1}, Lcom/twitter/database/internal/f;->a(Ljava/lang/Class;)Lcom/twitter/database/model/p;

    move-result-object v0

    .line 55
    instance-of v1, v0, Lcom/twitter/database/model/x;

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/twitter/database/internal/h;->c:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 69
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/twitter/database/internal/h;->a:Lcom/twitter/database/internal/f;

    invoke-virtual {v1}, Lcom/twitter/database/internal/f;->h()Lcom/twitter/database/model/w;

    move-result-object v1

    .line 61
    :try_start_0
    invoke-interface {v0}, Lcom/twitter/database/model/p;->m()V

    .line 62
    invoke-interface {v0}, Lcom/twitter/database/model/p;->h()V

    .line 63
    invoke-interface {v1}, Lcom/twitter/database/model/w;->a()Lcom/twitter/database/model/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-interface {v1}, Lcom/twitter/database/model/w;->close()V

    .line 67
    invoke-virtual {p0, p1}, Lcom/twitter/database/internal/h;->b(Ljava/lang/Class;)V

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/twitter/database/model/w;->close()V

    throw v0
.end method

.method public a(Ljava/lang/Class;Lcom/twitter/database/model/ColumnDefinition;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/s;",
            ">;",
            "Lcom/twitter/database/model/ColumnDefinition;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {}, Lcom/twitter/util/j;->c()V

    .line 75
    iget-object v0, p0, Lcom/twitter/database/internal/h;->a:Lcom/twitter/database/internal/f;

    invoke-virtual {v0, p1}, Lcom/twitter/database/internal/f;->a(Ljava/lang/Class;)Lcom/twitter/database/model/p;

    move-result-object v0

    check-cast v0, Lcom/twitter/database/model/s;

    .line 77
    iget-object v1, p0, Lcom/twitter/database/internal/h;->a:Lcom/twitter/database/internal/f;

    invoke-virtual {v1}, Lcom/twitter/database/internal/f;->e()Lcom/twitter/database/model/b;

    move-result-object v1

    invoke-interface {v0}, Lcom/twitter/database/model/s;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/twitter/database/model/b;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 78
    iget-object v2, p2, Lcom/twitter/database/model/ColumnDefinition;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ALTER TABLE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-interface {v0}, Lcom/twitter/database/model/s;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ADD COLUMN "

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/database/model/ColumnDefinition;->a:Ljava/lang/String;

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/database/model/ColumnDefinition;->b:Lcom/twitter/database/model/ColumnDefinition$Type;

    iget-object v1, v1, Lcom/twitter/database/model/ColumnDefinition$Type;->dbType:Ljava/lang/String;

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    iget-boolean v1, p2, Lcom/twitter/database/model/ColumnDefinition;->c:Z

    if-eqz v1, :cond_0

    .line 86
    const-string/jumbo v1, " NOT NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_0
    iget-object v1, p2, Lcom/twitter/database/model/ColumnDefinition;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 89
    const-string/jumbo v1, " DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-object v1, p2, Lcom/twitter/database/model/ColumnDefinition;->b:Lcom/twitter/database/model/ColumnDefinition$Type;

    sget-object v2, Lcom/twitter/database/model/ColumnDefinition$Type;->i:Lcom/twitter/database/model/ColumnDefinition$Type;

    if-ne v1, v2, :cond_3

    .line 91
    iget-object v1, p2, Lcom/twitter/database/model/ColumnDefinition;->d:Ljava/lang/String;

    invoke-static {v1}, Lbar;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :cond_1
    :goto_0
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/twitter/database/internal/h;->a:Lcom/twitter/database/internal/f;

    invoke-virtual {v1}, Lcom/twitter/database/internal/f;->e()Lcom/twitter/database/model/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/twitter/database/model/b;->a(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/twitter/database/internal/h;->b(Ljava/lang/Class;)V

    .line 100
    :cond_2
    return-void

    .line 93
    :cond_3
    iget-object v1, p2, Lcom/twitter/database/model/ColumnDefinition;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public varargs a(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/s;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 105
    iget-object v0, p0, Lcom/twitter/database/internal/h;->a:Lcom/twitter/database/internal/f;

    invoke-virtual {v0, p1}, Lcom/twitter/database/internal/f;->a(Ljava/lang/Class;)Lcom/twitter/database/model/p;

    move-result-object v0

    check-cast v0, Lcom/twitter/database/model/s;

    .line 106
    invoke-interface {v0}, Lcom/twitter/database/model/s;->a()Ljava/lang/String;

    move-result-object v4

    .line 108
    invoke-static {p2}, Lcom/twitter/util/collection/r;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 109
    invoke-interface {v0}, Lcom/twitter/database/model/s;->f()Lcom/twitter/database/model/q;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/database/internal/m;

    .line 110
    invoke-virtual {v1}, Lcom/twitter/database/internal/m;->a()[Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {v1}, Lcom/twitter/util/collection/r;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 112
    iget-object v1, p0, Lcom/twitter/database/internal/h;->a:Lcom/twitter/database/internal/f;

    invoke-virtual {v1}, Lcom/twitter/database/internal/f;->e()Lcom/twitter/database/model/b;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/twitter/database/model/b;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 116
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v7

    .line 117
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v2, v3

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 118
    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 119
    invoke-virtual {v7, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    move v1, v2

    :goto_1
    move v2, v1

    .line 123
    goto :goto_0

    .line 121
    :cond_0
    add-int/lit8 v1, v2, 0x1

    goto :goto_1

    .line 124
    :cond_1
    invoke-virtual {v7}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 125
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "All columns are removed in this call; recommended to drop table instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_2
    if-lez v2, :cond_3

    .line 130
    const-string/jumbo v2, ","

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 131
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ALTER TABLE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " RENAME TO "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_old;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    .line 132
    invoke-interface {v0}, Lcom/twitter/database/model/s;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "INSERT INTO "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ") SELECT "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " FROM "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "_old;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DROP TABLE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "_old;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 131
    invoke-virtual {p0, v2}, Lcom/twitter/database/internal/h;->d([Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, p1}, Lcom/twitter/database/internal/h;->b(Ljava/lang/Class;)V

    .line 138
    :cond_3
    return-void
.end method

.method public varargs a([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 143
    const-string/jumbo v0, "TABLE"

    invoke-direct {p0, v0, p1}, Lcom/twitter/database/internal/h;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 173
    invoke-static {}, Lcom/twitter/util/j;->c()V

    .line 174
    invoke-virtual {p0}, Lcom/twitter/database/internal/h;->a()Lcom/twitter/database/model/w;

    move-result-object v1

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/twitter/database/internal/h;->a:Lcom/twitter/database/internal/f;

    invoke-virtual {v0}, Lcom/twitter/database/internal/f;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 177
    invoke-virtual {p0, v0}, Lcom/twitter/database/internal/h;->a(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/twitter/database/model/w;->close()V

    throw v0

    .line 179
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/twitter/database/model/w;->a()Lcom/twitter/database/model/w;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    invoke-interface {v1}, Lcom/twitter/database/model/w;->close()V

    .line 183
    return-void
.end method

.method public b(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/p;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/twitter/database/internal/h;->b:Ljava/util/Collection;

    iget-object v1, p0, Lcom/twitter/database/internal/h;->a:Lcom/twitter/database/internal/f;

    invoke-virtual {v1, p1}, Lcom/twitter/database/internal/f;->a(Ljava/lang/Class;)Lcom/twitter/database/model/p;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 188
    return-void
.end method

.method public varargs b([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 155
    const-string/jumbo v0, "INDEX"

    invoke-direct {p0, v0, p1}, Lcom/twitter/database/internal/h;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public c()Lcom/twitter/database/model/l;
    .locals 5

    .prologue
    .line 194
    invoke-static {}, Lcom/twitter/util/j;->c()V

    .line 195
    invoke-direct {p0}, Lcom/twitter/database/internal/h;->d()Ljava/util/List;

    move-result-object v2

    .line 196
    iget-object v0, p0, Lcom/twitter/database/internal/h;->a:Lcom/twitter/database/internal/f;

    invoke-virtual {v0}, Lcom/twitter/database/internal/f;->h()Lcom/twitter/database/model/w;

    move-result-object v3

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/twitter/database/internal/h;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/database/model/p;

    .line 199
    instance-of v4, v0, Lcom/twitter/database/internal/o;

    if-eqz v4, :cond_0

    .line 200
    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/database/internal/o;

    invoke-virtual {v0}, Lcom/twitter/database/internal/o;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 211
    :catchall_0
    move-exception v0

    invoke-interface {v3}, Lcom/twitter/database/model/w;->close()V

    throw v0

    .line 203
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    .line 204
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/database/model/p;

    .line 205
    invoke-interface {v0}, Lcom/twitter/database/model/p;->m()V

    .line 206
    invoke-interface {v0}, Lcom/twitter/database/model/p;->h()V

    .line 203
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/twitter/database/internal/h;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 209
    invoke-interface {v3}, Lcom/twitter/database/model/w;->a()Lcom/twitter/database/model/w;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    invoke-interface {v3}, Lcom/twitter/database/model/w;->close()V

    .line 213
    iget-object v0, p0, Lcom/twitter/database/internal/h;->a:Lcom/twitter/database/internal/f;

    return-object v0
.end method

.method public varargs c([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 161
    const-string/jumbo v0, "TRIGGER"

    invoke-direct {p0, v0, p1}, Lcom/twitter/database/internal/h;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public varargs d([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 167
    invoke-static {p1}, Lcom/twitter/util/collection/r;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/database/internal/h;->a(Ljava/lang/Iterable;)V

    .line 168
    return-void
.end method
