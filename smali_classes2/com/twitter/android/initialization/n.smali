.class Lcom/twitter/android/initialization/n;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbjd;


# instance fields
.field final synthetic a:Ljava/lang/StringBuilder;

.field final synthetic b:Lcom/twitter/android/initialization/p;

.field final synthetic c:Ljava/text/NumberFormat;

.field final synthetic d:Lcom/twitter/android/initialization/OomeReporterInitializer;


# direct methods
.method constructor <init>(Lcom/twitter/android/initialization/OomeReporterInitializer;Ljava/lang/StringBuilder;Lcom/twitter/android/initialization/p;Ljava/text/NumberFormat;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/twitter/android/initialization/n;->d:Lcom/twitter/android/initialization/OomeReporterInitializer;

    iput-object p2, p0, Lcom/twitter/android/initialization/n;->a:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/twitter/android/initialization/n;->b:Lcom/twitter/android/initialization/p;

    iput-object p4, p0, Lcom/twitter/android/initialization/n;->c:Ljava/text/NumberFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 8

    .prologue
    .line 150
    iget-object v0, p0, Lcom/twitter/android/initialization/n;->a:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 153
    :try_start_0
    invoke-static {}, Lcom/twitter/app/common/app/a;->a()Lcom/twitter/app/common/app/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/app/a;->g()Lcom/twitter/app/common/util/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/util/n;->a()Lcom/twitter/app/common/util/p;

    move-result-object v1

    .line 154
    invoke-virtual {v1}, Lcom/twitter/app/common/util/p;->b()Ljava/util/List;

    move-result-object v0

    .line 155
    invoke-virtual {v1}, Lcom/twitter/app/common/util/p;->c()Ljava/util/List;

    move-result-object v2

    .line 156
    iget-object v3, p0, Lcom/twitter/android/initialization/n;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Created Activities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 157
    invoke-virtual {v1}, Lcom/twitter/app/common/util/p;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", Active: "

    .line 158
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 159
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", Leaked: "

    .line 160
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 161
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    .line 162
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 164
    iget-object v4, p0, Lcom/twitter/android/initialization/n;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v5, "* "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 165
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " (alive for "

    .line 166
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 167
    invoke-virtual {v1, v0}, Lcom/twitter/app/common/util/p;->c(Ljava/lang/Object;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/twitter/util/al;->e(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget-object v4, p0, Lcom/twitter/android/initialization/n;->a:Ljava/lang/StringBuilder;

    invoke-direct {p0, v4, v0}, Lcom/twitter/android/initialization/n;->a(Ljava/lang/StringBuilder;Landroid/app/Activity;)V

    .line 169
    iget-object v0, p0, Lcom/twitter/android/initialization/n;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, ")\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 183
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/twitter/android/initialization/n;->a:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/twitter/android/initialization/OomeReporterInitializer;->a(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 171
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 172
    iget-object v3, p0, Lcom/twitter/android/initialization/n;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "* "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 173
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (*leaked* for "

    .line 174
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 175
    invoke-virtual {v1, v0}, Lcom/twitter/app/common/util/p;->d(Ljava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/twitter/util/al;->e(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v3, p0, Lcom/twitter/android/initialization/n;->a:Ljava/lang/StringBuilder;

    invoke-direct {p0, v3, v0}, Lcom/twitter/android/initialization/n;->a(Ljava/lang/StringBuilder;Landroid/app/Activity;)V

    .line 177
    iget-object v0, p0, Lcom/twitter/android/initialization/n;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v3, ")\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 180
    :catch_1
    move-exception v0

    .line 181
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private a(Lcom/twitter/library/media/manager/l;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 122
    iget-object v0, p0, Lcom/twitter/android/initialization/n;->a:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 124
    :try_start_0
    invoke-virtual {p1}, Lcom/twitter/library/media/manager/l;->h()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 125
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 126
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/manager/i;

    invoke-virtual {v0}, Lcom/twitter/library/media/manager/i;->a()Lcom/twitter/util/collection/q;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_0

    .line 128
    iget-object v3, p0, Lcom/twitter/android/initialization/n;->b:Lcom/twitter/android/initialization/p;

    invoke-virtual {v3}, Lcom/twitter/android/initialization/p;->c()V

    .line 129
    iget-object v3, p0, Lcom/twitter/android/initialization/n;->b:Lcom/twitter/android/initialization/p;

    invoke-interface {v0, v3}, Lcom/twitter/util/collection/q;->a(Lcom/twitter/util/concurrent/e;)V

    .line 130
    iget-object v0, p0, Lcom/twitter/android/initialization/n;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/twitter/android/initialization/n;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/initialization/n;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/initialization/n;->c:Ljava/text/NumberFormat;

    iget-object v3, p0, Lcom/twitter/android/initialization/n;->b:Lcom/twitter/android/initialization/p;

    .line 135
    invoke-virtual {v3}, Lcom/twitter/android/initialization/p;->a()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " bitmaps, "

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/initialization/n;->c:Ljava/text/NumberFormat;

    iget-object v3, p0, Lcom/twitter/android/initialization/n;->b:Lcom/twitter/android/initialization/p;

    .line 137
    invoke-virtual {v3}, Lcom/twitter/android/initialization/p;->b()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " bytes"

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 145
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/twitter/android/initialization/n;->a:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/twitter/android/initialization/OomeReporterInitializer;->a(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 142
    :catch_1
    move-exception v0

    .line 143
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private a(Ljava/lang/StringBuilder;Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 187
    iget-object v0, p0, Lcom/twitter/android/initialization/n;->b:Lcom/twitter/android/initialization/p;

    invoke-virtual {v0}, Lcom/twitter/android/initialization/p;->c()V

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/twitter/android/initialization/n;->b:Lcom/twitter/android/initialization/p;

    invoke-static {p2, v0}, Lcom/twitter/media/util/a;->a(Landroid/app/Activity;Lcom/twitter/util/concurrent/e;)V

    .line 190
    const-string/jumbo v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/initialization/n;->c:Ljava/text/NumberFormat;

    iget-object v2, p0, Lcom/twitter/android/initialization/n;->b:Lcom/twitter/android/initialization/p;

    .line 191
    invoke-virtual {v2}, Lcom/twitter/android/initialization/p;->a()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/initialization/n;->c:Ljava/text/NumberFormat;

    iget-object v2, p0, Lcom/twitter/android/initialization/n;->b:Lcom/twitter/android/initialization/p;

    .line 193
    invoke-virtual {v2}, Lcom/twitter/android/initialization/p;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 194
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private b()Ljava/lang/String;
    .locals 8

    .prologue
    .line 202
    iget-object v0, p0, Lcom/twitter/android/initialization/n;->a:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 205
    :try_start_0
    invoke-static {}, Lcom/twitter/app/common/app/a;->a()Lcom/twitter/app/common/app/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/app/a;->h()Lcom/twitter/app/common/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/util/r;->a()Lcom/twitter/app/common/util/p;

    move-result-object v1

    .line 206
    invoke-virtual {v1}, Lcom/twitter/app/common/util/p;->b()Ljava/util/List;

    move-result-object v0

    .line 207
    invoke-virtual {v1}, Lcom/twitter/app/common/util/p;->c()Ljava/util/List;

    move-result-object v2

    .line 208
    iget-object v3, p0, Lcom/twitter/android/initialization/n;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Created Services: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 209
    invoke-virtual {v1}, Lcom/twitter/app/common/util/p;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", Active: "

    .line 210
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 211
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", Leaked: "

    .line 212
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 213
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    .line 214
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    .line 216
    iget-object v4, p0, Lcom/twitter/android/initialization/n;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v5, "* "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 217
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " (alive for "

    .line 218
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 219
    invoke-virtual {v1, v0}, Lcom/twitter/app/common/util/p;->c(Ljava/lang/Object;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/twitter/util/al;->e(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ")\n"

    .line 220
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 233
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/twitter/android/initialization/n;->a:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/twitter/android/initialization/OomeReporterInitializer;->a(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 222
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    .line 223
    iget-object v3, p0, Lcom/twitter/android/initialization/n;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "* "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 224
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (*leaked* for "

    .line 225
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 226
    invoke-virtual {v1, v0}, Lcom/twitter/app/common/util/p;->d(Ljava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/twitter/util/al;->e(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ")\n"

    .line 227
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 230
    :catch_1
    move-exception v0

    .line 231
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public a(Lbjb;Z)V
    .locals 2

    .prologue
    .line 105
    :try_start_0
    const-string/jumbo v0, "OutOfMemoryErrorLog.activity_report"

    invoke-direct {p0}, Lcom/twitter/android/initialization/n;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lbjb;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    .line 106
    const-string/jumbo v0, "OutOfMemoryErrorLog.service_report"

    invoke-direct {p0}, Lcom/twitter/android/initialization/n;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lbjb;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    .line 108
    invoke-static {}, Lcom/twitter/library/media/manager/l;->a()Lcom/twitter/library/media/manager/l;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_0

    .line 110
    const-string/jumbo v1, "OutOfMemoryErrorLog.fetcher_report"

    invoke-direct {p0, v0}, Lcom/twitter/android/initialization/n;->a(Lcom/twitter/library/media/manager/l;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lbjb;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 114
    :try_start_1
    const-string/jumbo v1, "OutOfMemoryErrorLog.report_error"

    invoke-static {v0}, Lcjw;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lbjb;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 115
    :catch_1
    move-exception v0

    goto :goto_0
.end method
