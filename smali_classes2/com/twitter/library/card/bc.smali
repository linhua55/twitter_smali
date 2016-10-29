.class public Lcom/twitter/library/card/bc;
.super Lcom/twitter/library/client/ad;
.source "Twttr"

# interfaces
.implements Lcom/twitter/config/f;


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static b:Lcom/twitter/library/card/bc;


# instance fields
.field private c:Z

.field private d:Z

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/twitter/util/collection/ac",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/library/widget/renderablecontent/DisplayMode;",
            ">;",
            "Lcom/twitter/library/card/be;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "\\W"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/twitter/library/card/bc;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/twitter/library/client/ad;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/card/bc;->e:Ljava/util/Map;

    .line 85
    const-string/jumbo v0, "card_registry_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/library/card/bc;->c:Z

    .line 86
    const-string/jumbo v0, "cards_forward_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/library/card/bc;->d:Z

    .line 87
    invoke-static {p0}, Lcom/twitter/config/d;->a(Lcom/twitter/config/f;)V

    .line 88
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/bj;)V

    .line 89
    return-void
.end method

.method public static b()Lcom/twitter/library/card/bc;
    .locals 1

    .prologue
    .line 97
    const-class v0, Lcom/twitter/library/card/bc;

    invoke-static {v0}, Lcvp;->a(Ljava/lang/Class;)V

    .line 98
    sget-object v0, Lcom/twitter/library/card/bc;->b:Lcom/twitter/library/card/bc;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/twitter/library/card/bc;

    invoke-direct {v0}, Lcom/twitter/library/card/bc;-><init>()V

    sput-object v0, Lcom/twitter/library/card/bc;->b:Lcom/twitter/library/card/bc;

    .line 101
    :cond_0
    sget-object v0, Lcom/twitter/library/card/bc;->b:Lcom/twitter/library/card/bc;

    return-object v0
.end method

.method public static b(Ljava/lang/String;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    const-string/jumbo v1, "card_registry_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    sget-object v1, Lcom/twitter/library/card/bc;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    sget-object v1, Lcom/twitter/library/card/bd;->a:[I

    invoke-virtual {p1}, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 261
    :goto_0
    const-string/jumbo v1, "_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 230
    :pswitch_0
    const-string/jumbo v1, "_forward"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 234
    :pswitch_1
    const-string/jumbo v1, "_full"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 238
    :pswitch_2
    const-string/jumbo v1, "_compose"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 242
    :pswitch_3
    const-string/jumbo v1, "_direct_message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 246
    :pswitch_4
    const-string/jumbo v1, "_direct_message_compose"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 250
    :pswitch_5
    const-string/jumbo v1, "_carousel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 254
    :pswitch_6
    const-string/jumbo v1, "_moments"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static c(Ljava/lang/String;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Z
    .locals 1

    .prologue
    .line 218
    invoke-static {}, Lcom/twitter/library/card/ao;->a()Lcom/twitter/library/card/ao;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/twitter/library/card/ao;->a(Ljava/lang/String;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Lcom/twitter/library/card/aw;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 171
    iget-boolean v0, p0, Lcom/twitter/library/card/bc;->c:Z

    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-object v1

    .line 174
    :cond_0
    invoke-static {p1, p2}, Lcom/twitter/util/collection/ac;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/ac;

    move-result-object v0

    .line 175
    iget-object v2, p0, Lcom/twitter/library/card/bc;->e:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/card/be;

    .line 176
    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/twitter/library/card/be;->a:Lcom/twitter/library/card/aw;

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public a()V
    .locals 2

    .prologue
    .line 205
    const-string/jumbo v0, "card_registry_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/library/card/bc;->c:Z

    .line 206
    const-string/jumbo v0, "cards_forward_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/library/card/bc;->d:Z

    .line 207
    iget-object v0, p0, Lcom/twitter/library/card/bc;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/card/be;

    .line 208
    invoke-virtual {v0}, Lcom/twitter/library/card/be;->a()V

    goto :goto_0

    .line 210
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/library/client/Session;)V
    .locals 0

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/twitter/library/card/bc;->a()V

    .line 215
    return-void
.end method

.method public varargs a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V
    .locals 5

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/twitter/library/card/bc;->c:Z

    if-nez v0, :cond_1

    .line 152
    :cond_0
    return-void

    .line 124
    :cond_1
    invoke-static {p1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    invoke-static {}, Lcom/twitter/util/h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Missing card name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_2
    if-nez p2, :cond_3

    .line 132
    invoke-static {}, Lcom/twitter/util/h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_3
    array-length v1, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p3, v0

    .line 139
    invoke-static {p1, v2}, Lcom/twitter/util/collection/ac;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/ac;

    move-result-object v3

    .line 140
    iget-object v4, p0, Lcom/twitter/library/card/bc;->e:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 142
    invoke-static {}, Lcom/twitter/util/h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Duplicate registration for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_4
    new-instance v4, Lcom/twitter/library/card/be;

    invoke-static {p1, v2}, Lcom/twitter/library/card/bc;->b(Ljava/lang/String;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, p2, v2}, Lcom/twitter/library/card/be;-><init>(Lcom/twitter/library/card/aw;Ljava/lang/String;)V

    .line 150
    iget-object v2, p0, Lcom/twitter/library/card/bc;->e:Ljava/util/Map;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(Lclw;)Z
    .locals 3

    .prologue
    .line 180
    invoke-virtual {p1}, Lclw;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    invoke-virtual {p1}, Lclw;->N()Lclm;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 158
    iget-boolean v0, p0, Lcom/twitter/library/card/bc;->c:Z

    if-nez v0, :cond_0

    .line 163
    :goto_0
    return v1

    .line 161
    :cond_0
    invoke-static {p1, p2}, Lcom/twitter/util/collection/ac;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/ac;

    move-result-object v0

    .line 162
    iget-object v2, p0, Lcom/twitter/library/card/bc;->e:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/card/be;

    .line 163
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/twitter/library/card/be;->a:Lcom/twitter/library/card/aw;

    invoke-virtual {v2, p2, p3}, Lcom/twitter/library/card/aw;->a(Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v0, v0, Lcom/twitter/library/card/be;->c:Z

    if-nez v0, :cond_1

    .line 164
    invoke-static {p1, p2}, Lcom/twitter/library/card/bc;->c(Ljava/lang/String;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 163
    goto :goto_0

    :cond_2
    move v0, v1

    .line 164
    goto :goto_1
.end method

.method public b(Lclw;)Z
    .locals 3

    .prologue
    .line 184
    invoke-virtual {p1}, Lclw;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    invoke-virtual {p1}, Lclw;->N()Lclm;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Z

    move-result v0

    return v0
.end method

.method public c(Lclw;)Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/twitter/library/card/bc;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/twitter/library/card/bc;->a(Lclw;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Lclw;)Z
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p1}, Lclw;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "legacy_deciders_amplify_player_enabled"

    .line 193
    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    const/4 v0, 0x0

    .line 196
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/twitter/library/card/bc;->b(Lclw;)Z

    move-result v0

    goto :goto_0
.end method

.method public e(Lclw;)Z
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Lcom/twitter/library/card/bc;->d(Lclw;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/twitter/library/card/bc;->c(Lclw;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
