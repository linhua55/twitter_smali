.class Lcom/crashlytics/android/ndk/d;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final a:[Lw;

.field private static final b:[Lab;

.field private static final c:[Lac;


# instance fields
.field private final d:Lcom/crashlytics/android/ndk/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    new-array v0, v1, [Lw;

    sput-object v0, Lcom/crashlytics/android/ndk/d;->a:[Lw;

    .line 53
    new-array v0, v1, [Lab;

    sput-object v0, Lcom/crashlytics/android/ndk/d;->b:[Lab;

    .line 54
    new-array v0, v1, [Lac;

    sput-object v0, Lcom/crashlytics/android/ndk/d;->c:[Lac;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/crashlytics/android/ndk/h;

    invoke-direct {v0}, Lcom/crashlytics/android/ndk/h;-><init>()V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/ndk/d;-><init>(Lcom/crashlytics/android/ndk/c;)V

    .line 66
    return-void
.end method

.method constructor <init>(Lcom/crashlytics/android/ndk/c;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/crashlytics/android/ndk/d;->d:Lcom/crashlytics/android/ndk/c;

    .line 70
    return-void
.end method

.method private static a(Ljava/io/File;)Ljava/io/File;
    .locals 4

    .prologue
    .line 209
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    :try_start_0
    invoke-static {}, Lcom/crashlytics/android/ndk/b;->e()Lcom/crashlytics/android/ndk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/ndk/b;->E()Landroid/content/Context;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 214
    new-instance v0, Ljava/io/File;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    .line 219
    :cond_0
    :goto_0
    return-object p0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    invoke-static {}, Lio/fabric/sdk/android/f;->h()Lio/fabric/sdk/android/s;

    move-result-object v1

    const-string/jumbo v2, "JsonCrashDataParser"

    const-string/jumbo v3, "Error getting ApplicationInfo"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/s;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 201
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    invoke-static {v0}, Lcom/crashlytics/android/ndk/d;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 205
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Ly;
    .locals 13

    .prologue
    .line 93
    const-string/jumbo v0, "orientation"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 94
    const-string/jumbo v0, "total_physical_memory"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 95
    const-string/jumbo v0, "total_internal_storage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 96
    const-string/jumbo v0, "available_physical_memory"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 97
    const-string/jumbo v0, "available_internal_storage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 98
    const-string/jumbo v0, "battery"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 100
    const-string/jumbo v0, "battery_velocity"

    const/4 v11, 0x1

    invoke-virtual {p1, v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 101
    const-string/jumbo v0, "proximity_enabled"

    const/4 v12, 0x0

    invoke-virtual {p1, v0, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 103
    new-instance v0, Ly;

    invoke-direct/range {v0 .. v12}, Ly;-><init>(IJJJJIIZ)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lz;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 74
    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 76
    invoke-virtual {p0, v0}, Lcom/crashlytics/android/ndk/d;->b(Lorg/json/JSONObject;)Laa;

    move-result-object v4

    .line 77
    invoke-virtual {p0, v0}, Lcom/crashlytics/android/ndk/d;->d(Lorg/json/JSONObject;)[Lab;

    move-result-object v5

    .line 78
    invoke-virtual {p0, v0}, Lcom/crashlytics/android/ndk/d;->c(Lorg/json/JSONObject;)[Lw;

    move-result-object v6

    .line 79
    invoke-virtual {p0, p1}, Lcom/crashlytics/android/ndk/d;->b(Ljava/lang/String;)[Lx;

    move-result-object v7

    .line 80
    invoke-virtual {p0, v0}, Lcom/crashlytics/android/ndk/d;->a(Lorg/json/JSONObject;)Ly;

    move-result-object v8

    .line 82
    new-instance v1, Lz;

    invoke-direct/range {v1 .. v8}, Lz;-><init>(JLaa;[Lab;[Lw;[Lx;Ly;)V

    return-object v1
.end method

.method public a(Lorg/json/JSONObject;I)[Lac;
    .locals 12

    .prologue
    .line 176
    const-string/jumbo v0, "frames"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 177
    if-nez v10, :cond_1

    .line 178
    sget-object v0, Lcom/crashlytics/android/ndk/d;->c:[Lac;

    .line 190
    :cond_0
    return-object v0

    .line 181
    :cond_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    .line 182
    new-array v0, v11, [Lac;

    .line 183
    const/4 v1, 0x0

    move v9, v1

    :goto_0
    if-ge v9, v11, :cond_0

    .line 184
    invoke-virtual {v10, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 185
    const-string/jumbo v2, "pc"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 186
    const-string/jumbo v4, "symbol"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 187
    if-nez v4, :cond_2

    const-string/jumbo v4, ""

    .line 188
    :cond_2
    new-instance v1, Lac;

    const-string/jumbo v5, ""

    const-wide/16 v6, 0x0

    move v8, p2

    invoke-direct/range {v1 .. v8}, Lac;-><init>(JLjava/lang/String;Ljava/lang/String;JI)V

    aput-object v1, v0, v9

    .line 183
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_0
.end method

.method public b(Lorg/json/JSONObject;)Laa;
    .locals 5

    .prologue
    .line 116
    const-string/jumbo v0, "sig_name"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    const-string/jumbo v1, "sig_code"

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    const-string/jumbo v2, "si_addr"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 119
    new-instance v4, Laa;

    invoke-direct {v4, v0, v1, v2, v3}, Laa;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v4
.end method

.method public b(Ljava/lang/String;)[Lx;
    .locals 4

    .prologue
    .line 195
    const/4 v0, 0x1

    new-array v0, v0, [Lx;

    const/4 v1, 0x0

    new-instance v2, Lx;

    const-string/jumbo v3, "json_session"

    invoke-direct {v2, v3, p1}, Lx;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public c(Lorg/json/JSONObject;)[Lw;
    .locals 11

    .prologue
    .line 123
    const-string/jumbo v0, "maps"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 125
    if-nez v8, :cond_0

    .line 126
    sget-object v0, Lcom/crashlytics/android/ndk/d;->a:[Lw;

    .line 152
    :goto_0
    return-object v0

    .line 129
    :cond_0
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 130
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 131
    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-static {v1}, Lcom/crashlytics/android/ndk/g;->a(Ljava/lang/String;)Lcom/crashlytics/android/ndk/f;

    move-result-object v10

    .line 135
    if-nez v10, :cond_1

    .line 130
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 139
    :cond_1
    iget-object v6, v10, Lcom/crashlytics/android/ndk/f;->c:Ljava/lang/String;

    .line 140
    invoke-static {v6}, Lcom/crashlytics/android/ndk/d;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 143
    :try_start_0
    iget-object v2, p0, Lcom/crashlytics/android/ndk/d;->d:Lcom/crashlytics/android/ndk/c;

    invoke-interface {v2, v1}, Lcom/crashlytics/android/ndk/c;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    .line 144
    new-instance v1, Lw;

    iget-wide v2, v10, Lcom/crashlytics/android/ndk/f;->a:J

    iget-wide v4, v10, Lcom/crashlytics/android/ndk/f;->b:J

    invoke-direct/range {v1 .. v7}, Lw;-><init>(JJLjava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 147
    :catch_0
    move-exception v1

    .line 148
    invoke-static {}, Lio/fabric/sdk/android/f;->h()Lio/fabric/sdk/android/s;

    move-result-object v2

    const-string/jumbo v3, "JsonCrashDataParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not generate ID for file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Lcom/crashlytics/android/ndk/f;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 152
    :cond_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lw;

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw;

    goto :goto_0
.end method

.method public d(Lorg/json/JSONObject;)[Lab;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 156
    const-string/jumbo v0, "threads"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 157
    if-nez v4, :cond_0

    .line 158
    sget-object v0, Lcom/crashlytics/android/ndk/d;->b:[Lab;

    .line 171
    :goto_0
    return-object v0

    .line 161
    :cond_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 162
    new-array v2, v5, [Lab;

    move v3, v1

    .line 163
    :goto_1
    if-ge v3, v5, :cond_2

    .line 164
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 165
    const-string/jumbo v0, "name"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 166
    const-string/jumbo v0, "crashed"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 168
    :goto_2
    new-instance v8, Lab;

    invoke-virtual {p0, v6, v0}, Lcom/crashlytics/android/ndk/d;->a(Lorg/json/JSONObject;I)[Lac;

    move-result-object v6

    invoke-direct {v8, v7, v0, v6}, Lab;-><init>(Ljava/lang/String;I[Lac;)V

    aput-object v8, v2, v3

    .line 163
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 166
    goto :goto_2

    :cond_2
    move-object v0, v2

    .line 171
    goto :goto_0
.end method
