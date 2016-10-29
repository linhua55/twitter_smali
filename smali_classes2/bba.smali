.class public Lbba;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbbf;


# static fields
.field public static final a:Lbbg;

.field private static final c:Ljava/util/regex/Pattern;


# instance fields
.field b:Lcom/twitter/database/model/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lbbg;

    const-string/jumbo v1, "ANNOTATION"

    invoke-direct {v0, v1}, Lbbg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lbba;->a:Lbbg;

    .line 30
    invoke-static {}, Lbba;->a()Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lbba;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/database/model/l;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lbba;->b:Lcom/twitter/database/model/l;

    .line 36
    return-void
.end method

.method private a(Lcom/twitter/database/internal/l;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/database/internal/l;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    sget-object v0, Lbba;->c:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Lcom/twitter/database/internal/l;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 87
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 91
    :cond_0
    return-object v1
.end method

.method private static a()Ljava/util/regex/Pattern;
    .locals 5

    .prologue
    .line 96
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 98
    invoke-static {}, Lcom/twitter/database/model/ColumnDefinition$Type;->values()[Lcom/twitter/database/model/ColumnDefinition$Type;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 99
    iget-object v4, v4, Lcom/twitter/database/model/ColumnDefinition$Type;->dbType:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(\\w+) ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "|"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lbbb;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lbba;->b:Lcom/twitter/database/model/l;

    if-nez v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    sget-object v0, Lbba;->a:Lbbg;

    invoke-virtual {p1, v0}, Lbbb;->a(Lbbg;)Lbbb;

    .line 44
    invoke-virtual {p0, p1}, Lbba;->b(Lbbb;)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/database/internal/l;Lbbb;)V
    .locals 9

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lbba;->a(Lcom/twitter/database/internal/l;)Ljava/util/Map;

    move-result-object v2

    .line 65
    invoke-virtual {p1}, Lcom/twitter/database/internal/l;->f()Lcom/twitter/database/model/q;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/database/internal/m;

    .line 66
    invoke-virtual {v0}, Lcom/twitter/database/internal/m;->a()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 67
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    new-instance v6, Lbbb;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "<column>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lbba;->a:Lbbg;

    invoke-direct {v6, v7, v8}, Lbbb;-><init>(Ljava/lang/String;Lbbg;)V

    .line 69
    const-string/jumbo v7, "name"

    invoke-virtual {v6, v7, v5}, Lbbb;->a(Ljava/lang/String;Ljava/lang/String;)Lbbb;

    .line 70
    const-string/jumbo v5, "type"

    invoke-virtual {v6, v5, v0}, Lbbb;->a(Ljava/lang/String;Ljava/lang/String;)Lbbb;

    .line 71
    invoke-virtual {p2, v6}, Lbbb;->a(Lbbb;)Lbbb;

    .line 66
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method public b(Lbbb;)V
    .locals 6

    .prologue
    .line 48
    iget-object v0, p0, Lbba;->b:Lcom/twitter/database/model/l;

    .line 49
    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/database/internal/f;

    invoke-virtual {v0}, Lcom/twitter/database/internal/f;->f()Ljava/util/Map;

    move-result-object v0

    .line 50
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 51
    iget-object v2, p0, Lbba;->b:Lcom/twitter/database/model/l;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-interface {v2, v0}, Lcom/twitter/database/model/l;->a(Ljava/lang/Class;)Lcom/twitter/database/model/p;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/database/internal/l;

    .line 52
    invoke-virtual {v0}, Lcom/twitter/database/internal/l;->a()Ljava/lang/String;

    move-result-object v2

    .line 53
    instance-of v3, v0, Lcom/twitter/database/internal/o;

    if-eqz v3, :cond_0

    invoke-static {v2}, Lbbi;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 54
    new-instance v3, Lbbb;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "<table>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lbba;->a:Lbbg;

    invoke-direct {v3, v4, v5}, Lbbb;-><init>(Ljava/lang/String;Lbbg;)V

    .line 55
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4, v2}, Lbbb;->a(Ljava/lang/String;Ljava/lang/String;)Lbbb;

    .line 56
    invoke-virtual {p1, v3}, Lbbb;->a(Lbbb;)Lbbb;

    move-result-object v2

    .line 57
    invoke-virtual {p0, v0, v2}, Lbba;->a(Lcom/twitter/database/internal/l;Lbbb;)V

    goto :goto_0

    .line 61
    :cond_1
    return-void
.end method
