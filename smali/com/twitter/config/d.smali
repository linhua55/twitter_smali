.class public Lcom/twitter/config/d;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/config/g;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/config/f;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/twitter/config/h;

.field private static d:J

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/twitter/config/d;->a:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/twitter/config/d;->b:Ljava/util/List;

    .line 25
    new-instance v0, Lcom/twitter/config/e;

    invoke-direct {v0}, Lcom/twitter/config/e;-><init>()V

    sput-object v0, Lcom/twitter/config/d;->c:Lcom/twitter/config/h;

    .line 41
    const/4 v0, 0x1

    sput-boolean v0, Lcom/twitter/config/d;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(JLjava/lang/String;D)D
    .locals 1

    .prologue
    .line 155
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/twitter/config/d;->a(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/twitter/util/object/j;->e(Ljava/lang/Object;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p3

    .line 160
    :cond_0
    :goto_0
    return-wide p3

    .line 157
    :catch_0
    move-exception v0

    .line 158
    invoke-static {p2, v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;D)D
    .locals 3

    .prologue
    .line 150
    sget-wide v0, Lcom/twitter/config/d;->d:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twitter/config/d;->a(JLjava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static a(JLjava/lang/String;F)F
    .locals 2

    .prologue
    .line 141
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/twitter/config/d;->a(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/twitter/util/object/j;->d(Ljava/lang/Object;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    .line 146
    :cond_0
    :goto_0
    return p3

    .line 143
    :catch_0
    move-exception v0

    .line 144
    invoke-static {p2, v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;F)F
    .locals 2

    .prologue
    .line 136
    sget-wide v0, Lcom/twitter/config/d;->d:J

    invoke-static {v0, v1, p0, p1}, Lcom/twitter/config/d;->a(JLjava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static a(JLjava/lang/String;I)I
    .locals 2

    .prologue
    .line 113
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/twitter/config/d;->a(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/twitter/util/object/j;->b(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    .line 118
    :cond_0
    :goto_0
    return p3

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-static {p2, v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 108
    sget-wide v0, Lcom/twitter/config/d;->d:J

    invoke-static {v0, v1, p0, p1}, Lcom/twitter/config/d;->a(JLjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic a()J
    .locals 2

    .prologue
    .line 22
    sget-wide v0, Lcom/twitter/config/d;->d:J

    return-wide v0
.end method

.method public static a(JLjava/lang/String;J)J
    .locals 1

    .prologue
    .line 127
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/twitter/config/d;->a(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/twitter/util/object/j;->c(Ljava/lang/Object;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p3

    .line 132
    :cond_0
    :goto_0
    return-wide p3

    .line 129
    :catch_0
    move-exception v0

    .line 130
    invoke-static {p2, v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;J)J
    .locals 3

    .prologue
    .line 122
    sget-wide v0, Lcom/twitter/config/d;->d:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twitter/config/d;->a(JLjava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)Lcom/twitter/config/i;
    .locals 2

    .prologue
    .line 240
    invoke-static {p0}, Lcom/twitter/config/d;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 241
    if-eqz v1, :cond_0

    new-instance v0, Lcom/twitter/config/i;

    invoke-direct {v0, v1}, Lcom/twitter/config/i;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(JLjava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 246
    invoke-static {p0, p1, p2, p0, p1}, Lcom/twitter/config/d;->b(JLjava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static a(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/twitter/config/d;->b(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/twitter/util/object/j;->f(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 179
    :cond_0
    :goto_0
    return-object p3

    .line 176
    :catch_0
    move-exception v0

    .line 177
    invoke-static {p2, v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    sget-wide v0, Lcom/twitter/config/d;->d:J

    invoke-static {v0, v1, p0, p1}, Lcom/twitter/config/d;->a(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(JLjava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 223
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/twitter/config/d;->a(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/twitter/util/object/j;->g(Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 228
    :cond_0
    :goto_0
    return-object p3

    .line 225
    :catch_0
    move-exception v0

    .line 226
    invoke-static {p2, v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 215
    sget-wide v0, Lcom/twitter/config/d;->d:J

    invoke-static {v0, v1, p0, p1}, Lcom/twitter/config/d;->a(JLjava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)V
    .locals 2

    .prologue
    .line 65
    sget-wide v0, Lcom/twitter/config/d;->d:J

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    .line 66
    sput-wide p0, Lcom/twitter/config/d;->d:J

    .line 67
    invoke-static {}, Lcom/twitter/config/d;->c()V

    .line 69
    :cond_0
    return-void
.end method

.method public static a(Lcom/twitter/config/f;)V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/twitter/config/d;

    invoke-static {v0}, Lcvp;->a(Ljava/lang/Class;)V

    .line 56
    sget-object v0, Lcom/twitter/config/d;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public static a(Lcom/twitter/config/g;)V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/twitter/config/d;

    invoke-static {v0}, Lcvp;->a(Ljava/lang/Class;)V

    .line 45
    sget-object v0, Lcom/twitter/config/d;->c:Lcom/twitter/config/h;

    invoke-interface {p0, v0}, Lcom/twitter/config/g;->a(Lcom/twitter/config/h;)V

    .line 46
    sget-object v0, Lcom/twitter/config/d;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-static {}, Lcom/twitter/config/d;->c()V

    .line 48
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 274
    sget-boolean v0, Lcom/twitter/config/d;->e:Z

    if-eqz v0, :cond_0

    .line 275
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error retrieving configuration value. Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 277
    :cond_0
    return-void
.end method

.method public static a(Z)V
    .locals 1

    .prologue
    .line 75
    const-class v0, Lcom/twitter/config/d;

    invoke-static {v0}, Lcvp;->a(Ljava/lang/Class;)V

    .line 76
    sput-boolean p0, Lcom/twitter/config/d;->e:Z

    .line 77
    return-void
.end method

.method public static a(JLjava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 89
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/twitter/config/d;->a(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/twitter/util/object/j;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    .line 94
    :cond_0
    :goto_0
    return p3

    .line 91
    :catch_0
    move-exception v0

    .line 92
    invoke-static {p2, v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 84
    sget-wide v0, Lcom/twitter/config/d;->d:J

    invoke-static {v0, v1, p0, p1}, Lcom/twitter/config/d;->a(JLjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static b(JLjava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 263
    sget-object v0, Lcom/twitter/config/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/config/g;

    .line 264
    invoke-interface {v0, p0, p1, p2}, Lcom/twitter/config/g;->a(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_0

    .line 270
    :goto_0
    return-object v0

    .line 269
    :cond_1
    invoke-static {p2}, Lcom/twitter/config/d;->e(Ljava/lang/String;)V

    .line 270
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(JLjava/lang/String;J)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 251
    sget-object v0, Lcom/twitter/config/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/config/g;

    move-wide v1, p0

    move-object v3, p2

    move-wide v4, p3

    .line 252
    invoke-interface/range {v0 .. v5}, Lcom/twitter/config/g;->a(JLjava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_0

    .line 258
    :goto_0
    return-object v0

    .line 257
    :cond_1
    invoke-static {p2}, Lcom/twitter/config/d;->e(Ljava/lang/String;)V

    .line 258
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/twitter/config/d;->a(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/twitter/util/object/j;->f(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 203
    :cond_0
    :goto_0
    return-object p3

    .line 200
    :catch_0
    move-exception v0

    .line 201
    invoke-static {p2, v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    const-string/jumbo v0, ""

    invoke-static {p0, v0}, Lcom/twitter/config/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 190
    sget-wide v0, Lcom/twitter/config/d;->d:J

    invoke-static {v0, v1, p0, p1}, Lcom/twitter/config/d;->b(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b()V
    .locals 0

    .prologue
    .line 22
    invoke-static {}, Lcom/twitter/config/d;->c()V

    return-void
.end method

.method public static b(Lcom/twitter/config/f;)V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/twitter/config/d;

    invoke-static {v0}, Lcvp;->a(Ljava/lang/Class;)V

    .line 61
    sget-object v0, Lcom/twitter/config/d;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public static b(Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 99
    :try_start_0
    sget-wide v0, Lcom/twitter/config/d;->d:J

    invoke-static {v0, v1, p0}, Lcom/twitter/config/d;->b(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/twitter/util/object/j;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 104
    :cond_0
    :goto_0
    return p1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    invoke-static {p0, v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 208
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static c()V
    .locals 2

    .prologue
    .line 287
    sget-object v0, Lcom/twitter/config/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/config/f;

    .line 288
    invoke-interface {v0}, Lcom/twitter/config/f;->a()V

    goto :goto_0

    .line 290
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 233
    sget-wide v0, Lcom/twitter/config/d;->d:J

    invoke-static {v0, v1, p0}, Lcom/twitter/config/d;->a(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 281
    invoke-static {}, Lcvo;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcvo;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Undefined FeatureConfiguration value for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 284
    :cond_0
    return-void
.end method
